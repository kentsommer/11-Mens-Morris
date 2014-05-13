(load "util.scm")
(load "gamestate.scm")
(load "loader.scm")

(define *PAUSE-BETWEEN-TURNS* #f) ;;If true, waits for the user to press enter between each turn
(define *DELAY-BETWEEN-TURNS* 100) ;;Time (in millisecsonds) to wait between turns if we are not pausing
(define *AI-ENABLE-TIME-LIMIT* #t) ;;Turns on AI time limit
(define *AI-TIME-LIMIT* 2) ;;Limit (in seconds) of how long an AI's move can take to process if Time limit is enabled
(define *TURN-LIMIT* 300) ;;Maximum number of turns. It is a tie if we reach this many turns.
(define *IGNORE-ERRORS* #f) ;;If true, AIs that error will simply lose and no error message will be printed
(define *COLOR* #t)
;; Color Values:
(define *P1-COLOR* "\033[22;31m")
(define *P2-COLOR* "\033[22;36m")
(define *N-COLOR*  "\033[22;37m")
;; Modifying these requires string swapping the values below.
;; 
;;    " \033[22;31m "
;; to
;;    " \033[22;35m "
;;
;; Black  = "\033[22;30m"
;; Red    = "\033[22;31m"
;; Green  = "\033[22;32m"
;; Yellow = "\033[22;33m"
;; Blue   = "\033[22;34m"
;; Violet = "\033[22;35m"
;; Cyan   = "\033[22;36m"
;; White  = "\033[22;37m"

;;=============================================================
;;              DO NOT MODIFY BELOW THIS LINE
;;=============================================================

(define board-file "board.txt")
(define *P1-STRING* "P 1")
(define *P2-STRING* "P 2")
(define *TIE* 'tie)

;;Loads the layout of the board from board-file	
(define layout (let ()
		 (define file-input (open-input-file board-file))
		 (define (read-all-lines)
		   (let ((line (read-line file-input)))
		     (if (eof-object? line)
			 ()
			 (cons line (read-all-lines)))))
		 (read-all-lines)))

;;Returns the players string
(define (get-player-string player)
  (if (eq? player *p1-symbol*)
      (string-append (if *COLOR* *P1-color* "") *p1-string* (if *COLOR* *N-COLOR* ""))
      (string-append (if *COLOR* *P2-color* "") *p2-string* (if *COLOR* *N-COLOR* ""))))

(define (does-player-have-a-move state player)
  (define positions (get-positions-with-player state player))
  (define dests (apply append (map (lambda (x) (get-all-adjacent x)) positions)))
  (any (lambda (x) (eq? (get-position state x) *empty-symbol*)) dests)
  )

;;Displays the given game state... (trust me)
(define (display-board state)
  (define parts (list "  _" "___" "_  "
		      "  _" "_|_" "_  "
		      "  _" "_|_" "_  "
		      " |_" "_|_" "_| " " |_" "_|_" "_| "
		      " |_" "___" "_| "
		      " |/" "_|_" "\\| "
		      " |/" "_|_" "\\| "))
  (define (pad num)
    (string-append (if (< num 10) " " "") (string num)))
  (define (select-string x)
    (cond ((eq? (get-position state x) *empty-symbol*) (list-ref parts x))
	  (else (get-player-string (get-position state x)))))
  (define (printf line args count)
    (define (printf-list lst count)
      (if (null? lst) count
	  (if (equal? (car lst) #\~)
	      (begin (display (list-ref args count)) (printf-list (cdddr lst) (+ 1 count)))
	      (begin (display (car lst))(printf-list (cdr lst) count)))))
    (define result (printf-list (string->list line) count))
    (newline)
    result)
  (define (helper lst count)
    (if (null? lst) 'done
	(helper (cdr lst) (printf (car lst) (map select-string (iota 24)) count))))
  (newline)(newline)(newline)(newline)(newline)(newline)(newline)(newline)
  (helper layout 0)
  (display (string-append "Pieces left to place      "(get-player-string *p1-symbol*)" - "(pad(get-player-initial-piece-count state *p1-symbol*))"     "
			  (get-player-string *p2-symbol*)" - "(pad(get-player-initial-piece-count state *p2-symbol*))))
  (newline)
  )

(define (get-place procedures)
  (car procedures))
(define (get-move procedures)
  (cadr procedures))
(define (get-remove procedures)
  (caddr procedures))

(define (wait player p1human p2human)
  (if (not (if (eq? player *p1-symbol*) p1human p2human))
      (if *PAUSE-BETWEEN-TURNS* 
	  (read-line)
	  (sleep-ms *DELAY-BETWEEN-TURNS*))
      ()))
(define (turn-string state)
  (string-append "Turn " (string (get-turn state)) " -- "))

;; Buzy waiting but what can you do... If it's crashing here, check what version of scheme you're on and let a TA know.
(define (sleep-ms t)
  (define (helper t)
    (if (> (system-clock) t)
	0
	(helper t)))
  (helper (+ (system-clock) (/ t 1000))))

;; Run AIs against eachother for a number of games.
;; This will NOT show the games in the console, to keep it fast.
;; If run-tests crashes, you must run "reset-display" below, or 
;; you won't be able to use display or newline.
;; Also, *stall* will be left #f and in AI-AI games the delay will
;; be close to zero, until you reset the variables.
;; Alternativley, you can just close scheme and reload 11MensMorris.
(define (run-tests player1 player2 number-of-games)	 
  (if (or (eq? player1 'human) (eq? player2 'human))
      (begin (display "Both players must be AIs for run-tests") 'done)
      (let (
	    (p1 0)
	    (p2 0)
	    (tie 0)
	    (game-number 0)
	    (old-stall *PAUSE-BETWEEN-TURNS*)
	    (old-sleep *DELAY-BETWEEN-TURNS*)
		(old-ignore *IGNORE-ERRORS*))
	
	(set! *PAUSE-BETWEEN-TURNS* #f)
	(set! *DELAY-BETWEEN-TURNS* 0)
	(set! *IGNORE-ERRORS* #t)
	(newline)
	(display (string-append "Playing " (number->string number-of-games) " game(s):"))
	(define (loopy)
	  (begin
	    (set! game-number (+ 1 game-number))
	    (newline)
	    (display (string-append "Playing game " (number->string game-number) "... "))
	    (flush-output)
	    (hide-display)
	    (set! load/suppress-loading-message? #t)
	    (let ((winner (play-game player1 player2)))
	      (reset-display)
	      (newline) 
	      (cond ((eq? winner *P1-SYMBOL*) (begin (display "Player 1 wins!") (set! p1 (+ p1 1))))
		    ((eq? winner *P2-SYMBOL*) (begin (display "Player 2 wins!") (set! p2 (+ p2 1))))
		    ((eq? winner *TIE*) (begin (display "Tie game!") (set! tie (+ tie 1))))))
					;(if (eq? (cadr winner) *PLAYER-1-OVERTIME*) (begin (display "\nPlayer 1 went over time.") (set! p1-ot (+ p1-ot 1))))
					;(if (eq? (caddr winner) *PLAYER-2-OVERTIME*) (begin (display "\nPlayer 2 went over time.") (set! p2-ot (+ p2-ot 1))))
	      
	    (if (< game-number number-of-games) (loopy))))
	(loopy)
	(set! load/suppress-loading-message? #f)
	(newline)
	(set! *PAUSE-BETWEEN-TURNS* old-stall)
	(set! *DELAY-BETWEEN-TURNS* old-sleep)
	(set! *IGNORE-ERRORS* old-ignore)
	(display (string-append "Player 1 wins: " (number->string p1) "\n"))
	(display (string-append "Player 2 wins: " (number->string p2) "\n"))
	(display (string-append "Ties: " (number->string tie) "\n"))
					;(if (> p1-ot 0) (display "Player 1 went over the time-limit."))
					;(if (> p2-ot 0) (display "Player 2 went over the time-limit."))
	(cond ((= p1 p2) 'tie)
	      ((> p1 p2) *P1-SYMBOL*)
	      ((> p2 p1) *P2-SYMBOL*)
	      (else "Something went wrong, this value should not be displayed")))
      )
  )
  
  ;; Disables the display and newline procedures.  AIs should not call this.
(define (hide-display)	 
    (set! newline  
	  (let ((old-newline newline))
	    (define (temp-newline . args) ;; Using define rather than lambda
	      (if (and (not (null? args)) 
		       (eq? (car args) 'reset))
		  (set! newline old-newline) #f))
	    temp-newline))

    (set! display
	  (let ((old-display display))
	    (define (temp-display . args) ;; Using define rather than lambda
	      (if (and (not (null? args)) 
		       (eq? (car args) 'reset))
		  (set! display old-display) #f))
	    temp-display))
    )
  
;; Resets the display and newline procedure.  Call this whenever
;; run-tests crashes, if you can't get any output.
(define (reset-display)
  (display 'reset)
  (newline 'reset)
  'done)

;; This is the main way to play 11MensMorris.
;; Player1 and Player2 can either be a string representing the file that containts the AI player or the symbol 'human
;; Examples: (play-game 'human 'human) or (play-game 'human "random.scm")
;; Play-game returns the winner of the game (either p1 or p2)
;; See random.scm for an example AI player
(define (play-game player1 player2)
  (define last-action-string "")
  (define (remove-action-string state player place)
    (set! last-action-string (string-append last-action-string "\n" (turn-string state) (get-player-string player) " removed piece at " (string place))))
  (define (place-action-string state player place)
    (set! last-action-string (string-append (turn-string state) (get-player-string player) " placed piece at " (string place))))
  (define (move-action-string state player places)
    (set! last-action-string (string-append (turn-string state) (get-player-string player) " moved piece from " (string (car places)) " to " (string (cdr places))))
    )
  (define ret ())
  (define (illegal-move str  player)
    (newline)(display str)(newline)
    (display (string-append (get-player-string player) " loses because of illegal move"))(newline)
    (ret (get-opposite-player player)))
  (define (check-time time player)
    (if (and *AI-ENABLE-TIME-LIMIT* (> (- (system-clock) time) *AI-TIME-LIMIT*))
	(begin (newline)(string-append (get-player-string player) " loses because they ran out of time")(newline)
	(ret (get-opposite-player player))) 
	()))
  (define (handle-errors player proc)
	(define result (if *IGNORE-ERRORS* (ignore-errors proc) (proc)))
	(if (condition? result)
		(illegal-move "Player has errored" player)
		result))
  (define (do-remove-move state player procs)
    (define start (system-clock))
	(define proc (lambda () ((get-remove procs) (copy-state state) player)))
    (define place (handle-errors player proc))
    (check-time start player)
    (define result (remove-piece! state place (get-opposite-player player)))
    (cond ((eq? result *SUCCESS*) (remove-action-string state player place))
	  (else (illegal-move (string-append (get-player-string player) ": " (string place) " is not a valid piece to remove") player))))
  (define (human-remove-move state player)
    (display (string-append (get-player-string player) ", what piece do you want to remove = "))
    (define place (read))
    (define result (remove-piece! state place (get-opposite-player player)))
    (cond ((eq? result *SUCCESS*) (remove-action-string state player place))
	  (else (display "Not a valid piece to remove")(newline) (human-remove-move state player))))
  (define (do-place-move state player procs)
    (define start (system-clock))    
    (define proc (lambda () ((get-place procs) (copy-state state) player)))
	(define place (handle-errors player proc))
    (check-time start player)
    (define result (place-piece! state place player))
    (cond ((eq? result *SUCCESS*) (place-action-string state player place))
	  ((eq? result *made-mill*) (place-action-string state player place) (do-remove-move state player procs))
	  (else (illegal-move (string-append (turn-string state) (get-player-string player) ": " (string place) " is not a valid position to place a piece") player))))
  (define (human-place-move state player)
    (display (string-append (get-player-string player) ", where do you want to place a piece = "))
    (define place (read))
    (define result (place-piece! state place player))
    (cond ((eq? result *SUCCESS*) (place-action-string state player place))
	  ((eq? result *made-mill*) (place-action-string state player place) (human-remove-move state player))
	  (else (display "ERROR: Not a valid position to place a piece")(newline)(human-place-move state player))))
  (define (do-move-move state player procs)
    (define start (system-clock))    
    (define proc (lambda () ((get-move procs) (copy-state state) player)))
	(define places (handle-errors player proc))
    (check-time start player)
    (define result (move-piece! state (car places) (cdr places) player))
    (cond ((eq? result *SUCCESS*) (move-action-string state player places))
	  ((eq? result *made-mill*) (move-action-string state player places) (do-remove-move state player procs))
	  (else (illegal-move (string-append (turn-string state) (get-player-string player) ": " (string (car places)) " to " (string (cdr places)) " is not a valid piece and/or place to move to") player))))
  (define (human-move-move state player)
    (display (string-append (get-player-string player) ", what piece do you want to move = "))
    (define src (read))
    (display (string-append (get-player-string player) ", where do you want to move it to = "))
    (define dest (read))
    (define result (move-piece! state src dest player))
    (cond ((eq? result *SUCCESS*) (move-action-string state player (cons src dest)))
	  ((eq? result *made-mill*) (move-action-string state player (cons src dest)) (human-remove-move state player))
	  (else (display "ERROR: Not a valid piece or place to move to")(newline)(human-move-move state player))))
  (letrec ((p1human (eq? player1 'human))
	   (p2human (eq? player2 'human))
	   (player *p1-symbol*)
	   (state (new-game-state))
	   (p1-procedures (if p1human () (if (procedure? player1) (player1) (load-AI player1))))
	   (p2-procedures (if p2human () (if (procedure? player2) (player2) (load-AI player2)))))
    (call-with-current-continuation (lambda (return)
				      (set! ret return)
				      (for-each (lambda (x) 
						  (newline)(newline)(newline)(newline)(newline)(newline)(newline)(newline)
						  (display-board state)
						  (display last-action-string)(newline)
						  (cond ((and (eq? player *p1-symbol*) p1human) (human-place-move state player))
							((and (eq? player *p2-symbol*) p2human) (human-place-move state player))
							((eq? player *p1-symbol*) (do-place-move state player p1-procedures))
							((eq? player *p2-symbol*) (do-place-move state player p2-procedures))
							(else (error "I don't know whose place move it is")))
						  (wait player p1human p2human)
						  (set! player (get-opposite-player player))
						  (flop-player! state)
						  (inc-turn! state)
						  ) (iota 22))
				      ;;Rest of the game when moving pieces
				      (let loop ()
					(cond ((<= (get-player-piece-count state player) 2) (display-board state) (get-opposite-player player))
					      ((<= (get-player-piece-count state (get-opposite-player player)) 2) (display-board state) player)
					      ((> (get-turn state) *TURN-LIMIT*) (display-board state) (display "Too many turns, Its a TIE") *TIE*) 
					      ((not (does-player-have-a-move state player)) ;;Player loses if they can not make any moves
					       (display-board state)
					       (display last-action-string)(newline)
					       (display (get-player-string player))
					       (display " does not have any moves and loses.")(newline)
					       (get-opposite-player player))
					      (else
					       (display-board state)
					       (display last-action-string)(newline)
					       (cond ((and (eq? player *p1-symbol*) p1human) (human-move-move state player))
						     ((and (eq? player *p2-symbol*) p2human) (human-move-move state player))
						     ((eq? player *p1-symbol*) (do-move-move state player p1-procedures))
						     ((eq? player *p2-symbol*) (do-move-move state player p2-procedures))
						     (else (error "Don't know whose move it is")))
					       (wait player p1human p2human)
					       (set! player (get-opposite-player player))
					       (flop-player! state)
					       (inc-turn! state)
					       (loop))
					      ))
				      ))))
