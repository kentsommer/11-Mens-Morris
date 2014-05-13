;AI files should have a procedure with no arguments called 11MensMorrisAI.
(define (11MensMorrisAI)
	;Any functions want to use in your AI should appear here (inside of the 11mensMorrisAI procedure).
	(define (random-element lst)
		(list-ref lst (random (length lst))))
		
	;Returns the position to place a new piece during the first phase of the game.
	(define (place state player)
		(define places (get-positions-with-player state *empty-symbol*))
		(random-element places))
	
	;Returns a cons pair of what piece to move and where to move it. This is used in the second phase of the game.
	;(cons source destination)
	(define (move state player)	
		(define my-places (get-positions-with-player state player))
		(define my-places-with-open-adjacent (map (lambda (x) (cons x (get-open-adjacent state x))) my-places))
		(define possible-moves (append-map (lambda (x) (map (lambda (y) (cons (car x) y)) (cdr x)))  my-places-with-open-adjacent))
		(random-element possible-moves)
		)
		
	;This function is called when we can remove an opponents piece.
	;Remember that we can only remove pieces that are part of a mill when there is no other piece available to remove.
	;Returns the position of the piece we want to remove.	
	(define (remove state player)
		(define opponent-places (get-positions-with-player state (get-opposite-player player)))
		(define opponents-not-in-mill (filter (lambda (x) (not (is-position-in-mill state x))) opponent-places))
		(if (not (null? opponents-not-in-mill))
			(random-element opponents-not-in-mill)
			(random-element opponent-places)
		))

	;The procedure 11MensMorrisAI returns a list of your 3 procedures in the order place, move, and remove
	;This must be the last line of your AI.
	(list place move remove)
)
