(define *ERROR* 'error)
(define *MADE-MILL* 'made-mill)
(define *SUCCESS* 'success)

;;Creates a new game state (ie whose turn, number of unplayed pieces for p1 and p2, and the board)
(define (new-game-state) (list *p1-symbol* 1 11 11 (make-vector 24 *EMPTY-SYMBOL*)))

  
(define (get-player state)
	(car state))
(define (flop-player! state)
	(set-car! state (get-opposite-player (get-player state))))
	
(define (inc-turn! state)
	(set-car! (cdr state) (+ 1 (get-turn state))))
	
(define (dec-piece-count! state player)
	(if (eq? player *p1-symbol*)
		(set-car! (cddr state) (- (get-player-initial-piece-count state player) 1))
		(set-car! (cdddr state) (- (get-player-initial-piece-count state player) 1))))
		
;; Returns true if all of the given players pieces are currently in mills
(define (are-all-in-mills state player)
	(all (lambda (x) (is-position-in-mill state x)) (get-positions-with-player state player)))

;;Places a player's piece at the given position
;;Returns Error if it is not a legal move (state does not change)
;;Returns *MADE-MILL* if the new piece generated a mill
;;Returns *SUCCESS* otherwise
(define (place-piece! state position player)
	(cond ((not (or (eq? player *p1-symbol*) (eq? player *p2-symbol*))) *ERROR*)
		  ((or (< position 0) (>= position 24)) *ERROR*)
		  ((not (eq? (get-position state position) *EMPTY-SYMBOL*)) *ERROR*)
		  (else (set-position! state position player)
				(dec-piece-count! state player)
				(if (is-position-in-mill state position)
					*MADE-MILL*
					*SUCCESS*))))

;;Removes a piece of the given player at position
;;Returns *ERROR* if it is not a legal removal
;;Returns *SUCCESS* otherwise				
(define (remove-piece! state position player)
	(cond ((or (< position 0) (>= position 24)) *ERROR*)
		  ((not (eq? player (get-position state position))) *ERROR*)
		  ((or (not (is-position-in-mill state position)) (are-all-in-mills state player))
				(set-position! state position *empty-symbol*) *SUCCESS*)
		  (else *ERROR*)))
		  
;;Moves a player's piece from src to dest
;;Returns *ERROR* if not valid
;;Returns *MADE-MILL* if the moved piece generated a mill
;;Returns *SUCCESS* otherwise
(define (move-piece! state src dest player)
	(cond ((or (< src 0) (>= src 24) (< dest 0) (>= dest 24)) *ERROR*)
		  ((not (eq? player (get-position state src))) *ERROR*)
		  ((not (is-adjacent src dest)) *ERROR*)
		  ((not (eq? *empty-symbol* (get-position state dest))) *ERROR*)
		  (else (set-position! state src *empty-symbol*)
				(set-position! state dest player)
				(if (is-position-in-mill state dest)
					*MADE-MILL*
					*SUCCESS*))))
