(define *P1-SYMBOL* 'P1)
(define *P2-SYMBOL* 'P2)
(define *EMPTY-SYMBOL* 'EMPTY)


;;Returns true if all elements of lst are true when run with proc
(define (all proc lst)
  (cond ((null? lst) #t)
		((not (proc (car lst))) #f)
		(else (all proc (cdr lst)))))
		
;;Returns true if any elements of lst are true when run with proc
(define (any proc lst)
  (cond ((null? lst) #f)
		((proc (car lst)) #t)
		(else (any proc (cdr lst)))))

;;Returns the opposite players player
(define (get-opposite-player player)
	(if (eq? player *p1-symbol*)
		*p2-symbol*
		*p1-symbol*))
		
;;List of all possible mill positions
(define mills '((0 1 2)(3 4 5)(6 7 8)(9 10 11)(12 13 14)(15 16 17)(18 19 20)(21 22 23) ;Horizontal
		(0 9 21)(3 10 18)(6 11 15)(1 4 7)(16 19 22)(8 12 17)(5 13 20)(2 14 23) ;Vertical
		(0 3 6)(2 5 8)(15 18 21)(17 20 23))) ;Diagonal
		
;;list of adjacent positions
(define adjacent '((1 3 9)(0 4 2)(1 5 14)
				   (0 10 6 4)(3 1 7 5)(4 2 8 13)
				   (3 7 11)(6 4 8)(7 5 12)
				   (0 10 21)(9 3 11 18)(6 10 15)(8 13 17)(5 12 20 14)(13 2 23)
				   (11 18 16)(15 19 17)(16 12 20)
				   (21 10 19 15)(18 16 22 20)(19 17 13 23)
				   (9 18 22)(21 19 23)(22 20 14)))
				   
;;Returns true if p1 is adjacent to p2
(define (is-adjacent p1 p2)
	(if (member p1 (list-ref adjacent p2)) #t #f))

;;Returns a list of all positions that are adjacent (meaning you can move between them) to the given position
(define (get-all-adjacent position)
	(list-ref adjacent position))

;;Returns all of the positions that are adjacent and are empty to the given position
(define (get-open-adjacent state position)
	(filter (lambda (x) (is-player-at-position? state x *empty-symbol*)) (list-ref adjacent position)))

(define distances '((0 1 2 1 2 3 2 3 4 1 2 3 5 4 3 4 5 6 3 4 5 2 3 4)
                    (1 0 1 2 1 2 3 2 3 2 3 4 4 3 2 5 6 5 4 5 4 3 4 3)
                    (2 1 0 3 2 1 4 3 2 3 4 5 3 2 1 6 5 4 5 4 3 4 3 2)
                    (1 2 3 0 1 2 1 2 3 2 1 2 4 3 4 3 4 5 2 3 4 3 4 5)
                    (2 1 2 1 0 1 2 1 2 3 2 3 3 2 3 4 5 4 3 4 3 4 5 4)
                    (3 2 1 2 1 0 3 2 1 4 3 4 2 1 2 5 4 3 4 3 2 5 4 3)
                    (2 3 4 1 2 3 0 1 2 3 2 1 3 4 5 2 3 4 3 4 5 4 5 6)
                    (3 2 3 2 1 2 1 0 1 4 3 2 2 3 4 3 4 3 4 5 4 5 6 5)
                    (4 3 2 3 2 1 2 1 0 5 4 3 1 2 3 4 3 2 5 4 3 6 5 4)
                    (1 2 3 2 3 4 3 4 5 0 1 2 6 5 4 3 4 5 2 3 4 1 2 3)
                    (2 3 4 1 2 3 2 3 4 1 0 1 5 4 5 2 3 4 1 2 3 2 3 4)
                    (3 4 5 2 3 4 1 2 3 2 1 0 4 5 6 1 2 3 2 3 4 3 4 5)
                    (5 4 3 4 3 2 3 2 1 6 5 4 0 1 2 3 2 1 4 3 2 5 4 3)
                    (4 3 2 3 2 1 4 3 2 5 4 5 1 0 1 4 3 2 3 2 1 4 3 2)
                    (3 2 1 4 3 2 5 4 3 4 5 6 2 1 0 5 4 3 4 3 2 3 2 1)
                    (4 5 6 3 4 5 2 3 4 3 2 1 3 4 5 0 1 2 1 2 3 2 3 4)
                    (5 6 5 4 5 4 3 4 3 4 3 2 2 3 4 1 0 1 2 1 2 3 2 3)
                    (6 5 4 5 4 3 4 3 2 5 4 3 1 2 3 2 1 0 3 2 1 4 3 2)
                    (3 4 5 2 3 4 3 4 5 2 1 2 4 3 4 1 2 3 0 1 2 1 2 3)
                    (4 5 4 3 4 3 4 5 4 3 2 3 3 2 3 2 1 2 1 0 1 2 1 2)
                    (5 4 3 4 3 2 5 4 3 4 3 4 2 1 2 3 2 1 2 1 0 3 2 1)
                    (2 3 4 3 4 5 4 5 6 1 2 3 5 4 3 2 3 4 1 2 3 0 1 2)
                    (3 4 3 4 5 4 5 6 5 2 3 4 4 3 2 3 2 3 2 1 2 1 0 1)
                    (4 3 2 5 4 3 6 5 4 3 4 5 3 2 1 4 3 2 3 2 1 2 1 0)))
				   
;;Returns the length of the shortest path between 2 positions.
;;Does NOT take into account pieces that block this path. 
(define (distance-between src dest)
	(list-ref (list-ref distances src) dest))

;;Returns all possible next steps on a shortest path from src to dest
;;If src equals dest, () is returned
;;Example (next-step-on-shortest-path 1 8) => (4 2)
;;Does NOT take into account pieces that block this path.
(define (next-step-on-shortest-path src dest)
	(define d (distance-between src dest))
	(filter (lambda (x) (= (distance-between x dest) (- d 1))) (get-all-adjacent src)))

;;Returns a shortest path between 2 positions as a list of locations to move to.
;;Example (shortest-path 1 8) => (4 7 8)
;;Does NOT take into account pieces that block this path.
(define (shortest-path src dest)
	(define d (distance-between src dest))
	(if (= d 0) ()
		(let ((next (car (next-step-on-shortest-path src dest))))
			(cons next (shortest-path next dest)))))
			
	
;;Returns true if given position in in a mill 
(define (is-position-in-mill state position)
	(define symbol (get-position state position))
	(if (eq? symbol *empty-symbol*)
		#f
		(> (length (filter (lambda (x) (all (lambda (x) (eq? symbol (get-position state x))) x)) 
			(filter (lambda (x) (member position x)) mills))) 0)))

;;Gets the board from the state
(define (get-board state)
  (car (cddddr state)))
			
;;Gets the symbol at the position of the given state
(define (get-position state position)
	(vector-ref (get-board state) position))

;;Sets the state to have the symbol at the position
(define (set-position! state position symbol)
		(vector-set! (get-board state) position symbol))
			 
;;Returns true if player is at the given position
(define (is-player-at-position? state position player)
	(eq? (get-position state position) player))
  
;;Returns a list of all positions with the given symbol
(define (get-positions-with-player state player)
	(filter (lambda (x) (is-player-at-position? state x player)) (iota 24)))

;;Returns how many pieces a player has on the board
(define (get-player-piece-count state player)
	(length (get-positions-with-player state player)))

;;Returns the current turn number
(define (get-turn state)
	(cadr state))
	
;;Gets how many pieces are left to initially place for the given player
(define (get-player-initial-piece-count state player)
	(if (eq? player *p1-symbol*)
		(car (cddr state))
		(car (cdddr state))))

;;Returns a copy of the game state
(define (copy-state state)
	(map (lambda (x) (if (vector? x) (vector-copy x) x)) state))

