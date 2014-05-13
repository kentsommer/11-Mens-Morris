;; Names of creators 

  ;; Name of Submitter: Kent Sommer - x500: somme282
  ;; Name of Partner: Bonsa Tilahun - x500: tilah006 




;AI files should have a procedure with no arguments called 11MensMorrisAI.
(define (11MensMorrisAI)


  ;Any functions want to use in your AI should appear here (inside of the 11mensMorrisAI procedure).
  (define (random-element lst)
    (list-ref lst (random (length lst))))
  
  
  ;Returns the position to place a new piece during the first phase of the game.
  (define (place state player)
    (define places (get-positions-with-player state *empty-symbol*))
    

     ;; Two initial placements that I chose based on their possible mill combination count. 
    (cond ((and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player))) 5)
	  ((and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player))) 18)
	 
  
	  
	  ;; The following 20 sets will place a piece next to two pieces I already have down in order to form a mill. 

	  ;; 1

	  ((and (is-player-at-position? state 0 player) (is-player-at-position? state 1 player)
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) 2)

	  ((and (is-player-at-position? state 1 player) (is-player-at-position? state 2 player)
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) 0) 

	  ((and (is-player-at-position? state 0 player) (is-player-at-position? state 2 player)
		(and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) 1)

	  ;; 2

	  ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player)
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) 5)

	  ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player)
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) 3)

	  ((and (is-player-at-position? state 3 player) (is-player-at-position? state 5 player)
		(and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) 4)

	  ;; 3

	  ((and (is-player-at-position? state 6 player) (is-player-at-position? state 7 player)
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) 8)

	  ((and (is-player-at-position? state 7 player) (is-player-at-position? state 8 player)
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) 6)

	  ((and (is-player-at-position? state 6 player) (is-player-at-position? state 8 player)
		(and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) 7)

	  ;; 4

	  ((and (is-player-at-position? state 9 player) (is-player-at-position? state 10 player)
		(and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) 11)

	  ((and (is-player-at-position? state 10 player) (is-player-at-position? state 11 player)
		(and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) 9)

	  ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player)
		(and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) 10)

	  ;; 5 

	  ((and (is-player-at-position? state 12 player) (is-player-at-position? state 13 player)
		(and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) 14)

	  ((and (is-player-at-position? state 13 player) (is-player-at-position? state 14 player)
		(and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) 12)

	  ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player)
		(and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) 13)

	  ;; 6

	  ((and (is-player-at-position? state 15 player) (is-player-at-position? state 16 player)
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) 17)

	  ((and (is-player-at-position? state 16 player) (is-player-at-position? state 17 player)
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) 15)

	  ((and (is-player-at-position? state 15 player) (is-player-at-position? state 17 player)
		(and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) 16)

	  ;; 7

	  ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player)
		(and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) 20)

	  ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player)
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) 18)

	  ((and (is-player-at-position? state 18 player) (is-player-at-position? state 20 player)
		(and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) 19)

	  ;; 8 

	  ((and (is-player-at-position? state 21 player) (is-player-at-position? state 22 player)
		(and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) 23) 

	  ((and (is-player-at-position? state 22 player) (is-player-at-position? state 23 player)
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) 21)

	  ((and (is-player-at-position? state 21 player) (is-player-at-position? state 23 player)
		(and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) 22)

	  ;; 9 

	  ((and (is-player-at-position? state 0 player) (is-player-at-position? state 9 player)
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) 21)

	  ((and (is-player-at-position? state 9 player) (is-player-at-position? state 21 player)
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) 0)

	  ((and (is-player-at-position? state 0 player) (is-player-at-position? state 21 player)
		(and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) 9)

	  ;; 10

	  ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player)
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) 18)

	  ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player)
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) 3)

	  ((and (is-player-at-position? state 3 player) (is-player-at-position? state 18 player)
		(and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) 10)

	  ;; 11

	  ((and (is-player-at-position? state 6 player) (is-player-at-position? state 11 player)
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) 15)

	  ((and (is-player-at-position? state 11 player) (is-player-at-position? state 15 player)
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) 6) 

	  ((and (is-player-at-position? state 6 player) (is-player-at-position? state 15 player)
		(and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) 11)

	  ;; 12

	  ((and (is-player-at-position? state 1 player) (is-player-at-position? state 4 player)
		(and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) 7)

	  ((and (is-player-at-position? state 4 player) (is-player-at-position? state 7 player)
		(and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) 1)

	  ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player)
		(and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) 4)

	  ;; 13

	  ((and (is-player-at-position? state 16 player) (is-player-at-position? state 19 player)
		(and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) 22)

	  ((and (is-player-at-position? state 19 player) (is-player-at-position? state 22 player)
		(and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) 16)

	  ((and (is-player-at-position? state 16 player) (is-player-at-position? state 22 player)
		(and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) 19)

	  ;; 14

	  ((and (is-player-at-position? state 8 player) (is-player-at-position? state 12 player)
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) 17)

	  ((and (is-player-at-position? state 12 player) (is-player-at-position? state 17 player)
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) 8)

	  ((and (is-player-at-position? state 8 player) (is-player-at-position? state 17 player)
		(and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) 12) 

	  ;; 15 

	  ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player)
		(and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) 20)

	  ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player)
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) 5)

	  ((and (is-player-at-position? state 5 player) (is-player-at-position? state 20 player)
		(and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) 13)

	  ;; 16

	  ((and (is-player-at-position? state 2 player) (is-player-at-position? state 14 player)
		(and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) 23)

	  ((and (is-player-at-position? state 14 player) (is-player-at-position? state 23 player)
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) 2)

	  ((and (is-player-at-position? state 2 player) (is-player-at-position? state 23 player)
		(and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) 14)

	  ;; 17 

	  ((and (is-player-at-position? state 0 player) (is-player-at-position? state 3 player)
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) 6)

	  ((and (is-player-at-position? state 3 player) (is-player-at-position? state 6 player)
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) 0)

	  ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player)
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) 3)

	  ;; 18 

	  ((and (is-player-at-position? state 2 player) (is-player-at-position? state 5 player)
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) 8) 

	  ((and (is-player-at-position? state 5 player) (is-player-at-position? state 8 player)
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) 2)

	  ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player)
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) 5)

	  ;; 19

	  ((and (is-player-at-position? state 15 player) (is-player-at-position? state 18 player)
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) 21)

	  ((and (is-player-at-position? state 18 player) (is-player-at-position? state 21 player)
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) 15)

	  ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player)
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) 18)

	  ;; 20

	  ((and (is-player-at-position? state 17 player) (is-player-at-position? state 20 player)
		(and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) 23)

	  ((and (is-player-at-position? state 20 player) (is-player-at-position? state 23 player)
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) 17)

	  ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player)
		(and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) 20)




	  ;; The following 20 sets will place a piece next to two opponent pieces in order to stop them from forming a mill. 

	  
	  ;; 1

	  ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 1 (get-opposite-player player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) 2)

	  ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 2 (get-opposite-player player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) 0) 

	  ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 2 (get-opposite-player player))
		(and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) 1)

	  ;; 2

	  ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 4 (get-opposite-player player))
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) 5)

	  ((and (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) 3)

	  ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player))
		(and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) 4)

	  ;; 3

	  ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player))
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) 8)

	  ((and (is-player-at-position? state 7 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) 6)

	  ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player))
		(and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) 7)

	  ;; 4

	  ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 10 (get-opposite-player player))
		(and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) 11)

	  ((and (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player))
		(and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) 9)

	  ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player))
		(and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) 10)

	  ;; 5 

	  ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 13 (get-opposite-player player))
		(and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) 14)

	  ((and (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player))
		(and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) 12)

	  ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player))
		(and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) 13)

	  ;; 6

	  ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 16 (get-opposite-player player))
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) 17)

	  ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) 15)

	  ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player))
		(and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) 16)

	  ;; 7

	  ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 19 (get-opposite-player player))
		(and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) 20)

	  ((and (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player))
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) 18)

	  ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player))
		(and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) 19)

	  ;; 8 

	  ((and (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player))
		(and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) 23) 

	  ((and (is-player-at-position? state 22 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player))
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) 21)

	  ((and (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player))
		(and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) 22)

	  ;; 9 

	  ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 9 (get-opposite-player player))
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) 21)

	  ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) 0)

	  ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player))
		(and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) 9)

	  ;; 10

	  ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 10 (get-opposite-player player))
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) 18)

	  ((and (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) 3)

	  ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player))
		(and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) 10)

	  ;; 11

	  ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) 15)

	  ((and (is-player-at-position? state 11 (get-opposite-player player)) (is-player-at-position? state 15 (get-opposite-player player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) 6) 

	  ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 15 (get-opposite-player player))
		(and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) 11)

	  ;; 12

	  ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 4 (get-opposite-player player))
		(and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) 7)

	  ((and (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player))
		(and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) 1)

	  ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player))
		(and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) 4)

	  ;; 13

	  ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 19 (get-opposite-player player))
		(and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) 22)

	  ((and (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player))
		(and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) 16)

	  ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player))
		(and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) 19)

	  ;; 14

	  ((and (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 12 (get-opposite-player player))
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) 17)

	  ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player))
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) 8)

	  ((and (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player))
		(and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) 12) 

	  ;; 15 

	  ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 13 (get-opposite-player player))
		(and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) 20)

	  ((and (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player))
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) 5)

	  ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player))
		(and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) 13)

	  ;; 16

	  ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player))
		(and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) 23)

	  ((and (is-player-at-position? state 14 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) 2)

	  ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player))
		(and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) 14)

	  ;; 17 

	  ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 3 (get-opposite-player player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) 6)

	  ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 6 (get-opposite-player player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) 0)

	  ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 6 (get-opposite-player player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) 3)

	  ;; 18 

	  ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player))
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) 8) 

	  ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) 2)

	  ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player))
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) 5)

	  ;; 19

	  ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player))
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) 21)

	  ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) 15)

	  ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player))
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) 18)

	  ;; 20

	  ((and (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player))
		(and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) 23)

	  ((and (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player))
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) 17)

	  ((and (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player))
		(and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) 20)

	  
	  ;; The following 20 sets will place one of my pieces adjacent to a piece I already have down if it can.  


	  ;; 1

	  ((and (is-player-at-position? state 0 player) (not (is-player-at-position? state 1 player))  (not (is-player-at-position? state 2 player))
		(and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 2 (get-opposite-player player))))) 2)

	  ((and (is-player-at-position? state 1 player) (not (is-player-at-position? state 0 player))  (not (is-player-at-position? state 2 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 2 (get-opposite-player player))))) 0)

	  ((and (is-player-at-position? state 2 player) (not (is-player-at-position? state 0 player))  (not (is-player-at-position? state 1 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 1 (get-opposite-player player))))) 0)


	  ;; 2 

	  ((and (is-player-at-position? state 3 player) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 5 player))
		(and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 5 (get-opposite-player player))))) 5)

	  ((and (is-player-at-position? state 4 player) (not (is-player-at-position? state 3 player))  (not (is-player-at-position? state 5 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 5 (get-opposite-player player))))) 3)

	  ((and (is-player-at-position? state 5 player) (not (is-player-at-position? state 3 player))  (not (is-player-at-position? state 4 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 4 (get-opposite-player player))))) 3)


	  ;; 3


	  ((and (is-player-at-position? state 6 player) (not (is-player-at-position? state 7 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 8 (get-opposite-player player))))) 8)

	  ((and (is-player-at-position? state 7 player) (not (is-player-at-position? state 6 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 8 (get-opposite-player player))))) 6)

	  ((and (is-player-at-position? state 8 player) (not (is-player-at-position? state 6 player))  (not (is-player-at-position? state 7 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 7 (get-opposite-player player))))) 6)


	  ;; 4


	  ((and (is-player-at-position? state 9 player) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 11 player))
		(and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 11 (get-opposite-player player))))) 11)

	  ((and (is-player-at-position? state 10 player) (not (is-player-at-position? state 9 player))  (not (is-player-at-position? state 11 player))
		(and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 11 (get-opposite-player player))))) 9)

	  ((and (is-player-at-position? state 11 player) (not (is-player-at-position? state 9 player))  (not (is-player-at-position? state 10 player))
		(and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 10 (get-opposite-player player))))) 9)


	  ;; 5


	  ((and (is-player-at-position? state 12 player) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 14 player))
		(and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 14 (get-opposite-player player))))) 14)

	  ((and (is-player-at-position? state 13 player) (not (is-player-at-position? state 12 player))  (not (is-player-at-position? state 14 player))
		(and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 14 (get-opposite-player player))))) 12)

	  ((and (is-player-at-position? state 14 player) (not (is-player-at-position? state 12 player))  (not (is-player-at-position? state 13 player))
		(and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 13 (get-opposite-player player))))) 12)


	  ;; 6


	  ((and (is-player-at-position? state 15 player) (not (is-player-at-position? state 16 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 17 (get-opposite-player player))))) 17)

	  ((and (is-player-at-position? state 16 player) (not (is-player-at-position? state 15 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 17 (get-opposite-player player))))) 15)

	  ((and (is-player-at-position? state 17 player) (not (is-player-at-position? state 15 player))  (not (is-player-at-position? state 16 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 16 (get-opposite-player player))))) 15)


	  ;; 7


	  ((and (is-player-at-position? state 18 player) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 20 (get-opposite-player player))))) 20)

	  ((and (is-player-at-position? state 19 player) (not (is-player-at-position? state 18 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 20 (get-opposite-player player))))) 18)

	  ((and (is-player-at-position? state 20 player) (not (is-player-at-position? state 18 player))  (not (is-player-at-position? state 19 player))
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 19 (get-opposite-player player))))) 18)


	  ;; 8 


	  ((and (is-player-at-position? state 21 player) (not (is-player-at-position? state 22 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 23)

	  ((and (is-player-at-position? state 22 player) (not (is-player-at-position? state 21 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 21)

	  ((and (is-player-at-position? state 23 player) (not (is-player-at-position? state 21 player))  (not (is-player-at-position? state 22 player))
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 22 (get-opposite-player player))))) 21)


	  ;; 9


	  ((and (is-player-at-position? state 0 player) (not (is-player-at-position? state 9 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 21 (get-opposite-player player))))) 21)

	  ((and (is-player-at-position? state 9 player) (not (is-player-at-position? state 0 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 21 (get-opposite-player player))))) 0)

	  ((and (is-player-at-position? state 21 player) (not (is-player-at-position? state 0 player))  (not (is-player-at-position? state 9 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 9 (get-opposite-player player))))) 0)


	  ;; 10 


	  ((and (is-player-at-position? state 3 player) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 18 player))
		(and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 18 (get-opposite-player player))))) 18)

	  ((and (is-player-at-position? state 10 player) (not (is-player-at-position? state 3 player))  (not (is-player-at-position? state 18 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 18 (get-opposite-player player))))) 3)

	  ((and (is-player-at-position? state 18 player) (not (is-player-at-position? state 3 player))  (not (is-player-at-position? state 10 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 10 (get-opposite-player player))))) 3)


	  ;; 11


	  ((and (is-player-at-position? state 6 player) (not (is-player-at-position? state 11 player))  (not (is-player-at-position? state 15 player))
		(and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 15 (get-opposite-player player))))) 15)

	  ((and (is-player-at-position? state 11 player) (not (is-player-at-position? state 6 player))  (not (is-player-at-position? state 15 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 15 (get-opposite-player player))))) 6)

	  ((and (is-player-at-position? state 15 player) (not (is-player-at-position? state 6 player))  (not (is-player-at-position? state 11 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 11 (get-opposite-player player))))) 6)


	  ;; 12


	  ((and (is-player-at-position? state 1 player) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 7 player))
		(and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 7 (get-opposite-player player))))) 7)

	  ((and (is-player-at-position? state 4 player) (not (is-player-at-position? state 1 player))  (not (is-player-at-position? state 7 player))
		(and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 7 (get-opposite-player player))))) 1)

	  ((and (is-player-at-position? state 7 player) (not (is-player-at-position? state 1 player))  (not (is-player-at-position? state 4 player))
		(and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 4 (get-opposite-player player))))) 1)


	  ;; 13


	  ((and (is-player-at-position? state 16 player) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 22 player))
		(and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 22 (get-opposite-player player))))) 22)

	  ((and (is-player-at-position? state 19 player) (not (is-player-at-position? state 16 player))  (not (is-player-at-position? state 22 player))
		(and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 22 (get-opposite-player player))))) 16)

	  ((and (is-player-at-position? state 22 player) (not (is-player-at-position? state 16 player))  (not (is-player-at-position? state 19 player))
		(and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 19 (get-opposite-player player))))) 16)


	  ;; 14


	  ((and (is-player-at-position? state 8 player) (not (is-player-at-position? state 12 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 17 (get-opposite-player player))))) 17)

	  ((and (is-player-at-position? state 12 player) (not (is-player-at-position? state 8 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 17 (get-opposite-player player))))) 8)

	  ((and (is-player-at-position? state 17 player) (not (is-player-at-position? state 8 player))  (not (is-player-at-position? state 12 player))
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 12 (get-opposite-player player))))) 8)


	  ;; 15


	  ((and (is-player-at-position? state 5 player) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 20 (get-opposite-player player))))) 20)

	  ((and (is-player-at-position? state 13 player) (not (is-player-at-position? state 5 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 20 (get-opposite-player player))))) 5)

	  ((and (is-player-at-position? state 20 player) (not (is-player-at-position? state 5 player))  (not (is-player-at-position? state 13 player))
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 13 (get-opposite-player player))))) 5)


	  ;; 16


	  ((and (is-player-at-position? state 2 player) (not (is-player-at-position? state 14 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 23)

	  ((and (is-player-at-position? state 14 player) (not (is-player-at-position? state 2 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 2)

	  ((and (is-player-at-position? state 23 player) (not (is-player-at-position? state 2 player))  (not (is-player-at-position? state 14 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 14 (get-opposite-player player))))) 2)


	  ;; 17 


	  ((and (is-player-at-position? state 0 player) (not (is-player-at-position? state 3 player))  (not (is-player-at-position? state 6 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 6 (get-opposite-player player))))) 6)

	  ((and (is-player-at-position? state 3 player) (not (is-player-at-position? state 0 player))  (not (is-player-at-position? state 6 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 6 (get-opposite-player player))))) 0)

	  ((and (is-player-at-position? state 6 player) (not (is-player-at-position? state 0 player))  (not (is-player-at-position? state 3 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 3 (get-opposite-player player))))) 0)


	  ;; 18


	  ((and (is-player-at-position? state 2 player) (not (is-player-at-position? state 5 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 8 (get-opposite-player player))))) 8)

	  ((and (is-player-at-position? state 5 player) (not (is-player-at-position? state 2 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 8 (get-opposite-player player))))) 2)

	  ((and (is-player-at-position? state 8 player) (not (is-player-at-position? state 2 player))  (not (is-player-at-position? state 5 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 5 (get-opposite-player player))))) 2)


	  ;; 19 


	  ((and (is-player-at-position? state 15 player) (not (is-player-at-position? state 18 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 21 (get-opposite-player player))))) 21)

	  ((and (is-player-at-position? state 18 player) (not (is-player-at-position? state 15 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 21 (get-opposite-player player))))) 15)

	  ((and (is-player-at-position? state 21 player) (not (is-player-at-position? state 15 player))  (not (is-player-at-position? state 18 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 18 (get-opposite-player player))))) 15)


	  ;; 20


	  ((and (is-player-at-position? state 17 player) (not (is-player-at-position? state 20 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 23)

	  ((and (is-player-at-position? state 20 player) (not (is-player-at-position? state 17 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 17)

	  ((and (is-player-at-position? state 23 player) (not (is-player-at-position? state 17 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 20 (get-opposite-player player))))) 17)



	  ;; Place a piece on an empty line 

	  ;; The following 3 sets will place a piece on an empty line if possible. 

	  ;; Horizontal Placments 

	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 1 player))  (not (is-player-at-position? state 2 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 2 (get-opposite-player player))))) 0)

	  ((and (not (is-player-at-position? state 3 player)) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 5 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 5 (get-opposite-player player))))) 5)

	  ((and (not (is-player-at-position? state 6 player)) (not (is-player-at-position? state 7 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 8 (get-opposite-player player))))) 6)

	  ((and (not (is-player-at-position? state 9 player)) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 11 player))
		(and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 11 (get-opposite-player player))))) 9)

	  ((and (not (is-player-at-position? state 12 player)) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 14 player))
		(and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 14 (get-opposite-player player))))) 14)

	  ((and (not (is-player-at-position? state 15 player)) (not (is-player-at-position? state 16 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 17 (get-opposite-player player))))) 15)

	  ((and (not (is-player-at-position? state 18 player)) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 20 (get-opposite-player player))))) 18)

	  ((and (not (is-player-at-position? state 21 player)) (not (is-player-at-position? state 22 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 23)


					; Vertical Placements 


	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 9 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 21 (get-opposite-player player))))) 0)

	  ((and (not (is-player-at-position? state 3 player)) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 18 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 18 (get-opposite-player player))))) 18)

	  ((and (not (is-player-at-position? state 6 player)) (not (is-player-at-position? state 11 player))  (not (is-player-at-position? state 15 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 15 (get-opposite-player player))))) 15)

	  ((and (not (is-player-at-position? state 1 player)) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 7 player))
		(and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 7 (get-opposite-player player))))) 1)

	  ((and (not (is-player-at-position? state 16 player)) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 22 player))
		(and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 22 (get-opposite-player player))))) 22)

	  ((and (not (is-player-at-position? state 8 player)) (not (is-player-at-position? state 12 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 17 (get-opposite-player player))))) 8)

	  ((and (not (is-player-at-position? state 5 player)) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 20 (get-opposite-player player))))) 20)

	  ((and (not (is-player-at-position? state 2 player)) (not (is-player-at-position? state 14 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 2)


					; Diagonal Placements 


	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 3 player))  (not (is-player-at-position? state 6 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 6 (get-opposite-player player))))) 0)

	  ((and (not (is-player-at-position? state 2 player)) (not (is-player-at-position? state 5 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 8 (get-opposite-player player))))) 8)

	  ((and (not (is-player-at-position? state 15 player)) (not (is-player-at-position? state 18 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 21 (get-opposite-player player))))) 15)

	  ((and (not (is-player-at-position? state 17 player)) (not (is-player-at-position? state 20 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 23)
	  





;;;;;;; PLACE ADJACENT TO ENEMY PIECE IF ALL ELSE FAILS


	  ;; Horizontal Placments 

	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 1 player))  (not (is-player-at-position? state 2 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (is-player-at-position? state 1 (get-opposite-player player)) (not (is-player-at-position? state 2 (get-opposite-player player))))) 0)

	  ((and (not (is-player-at-position? state 3 player)) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 5 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (is-player-at-position? state 4 (get-opposite-player player)) (not (is-player-at-position? state 5 (get-opposite-player player))))) 5)

	  ((and (not (is-player-at-position? state 6 player)) (not (is-player-at-position? state 7 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (is-player-at-position? state 7 (get-opposite-player player)) (not (is-player-at-position? state 8 (get-opposite-player player))))) 6)

	  ((and (not (is-player-at-position? state 9 player)) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 11 player))
		(and (not (is-player-at-position? state 9 (get-opposite-player player))) (is-player-at-position? state 10 (get-opposite-player player)) (not (is-player-at-position? state 11 (get-opposite-player player))))) 9)

	  ((and (not (is-player-at-position? state 12 player)) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 14 player))
		(and (not (is-player-at-position? state 12 (get-opposite-player player))) (is-player-at-position? state 13 (get-opposite-player player)) (not (is-player-at-position? state 14 (get-opposite-player player))))) 14)

	  ((and (not (is-player-at-position? state 15 player)) (not (is-player-at-position? state 16 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (is-player-at-position? state 16 (get-opposite-player player)) (not (is-player-at-position? state 17 (get-opposite-player player))))) 15)

	  ((and (not (is-player-at-position? state 18 player)) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (is-player-at-position? state 19 (get-opposite-player player)) (not (is-player-at-position? state 20 (get-opposite-player player))))) 18)

	  ((and (not (is-player-at-position? state 21 player)) (not (is-player-at-position? state 22 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (is-player-at-position? state 22 (get-opposite-player player)) (not (is-player-at-position? state 23 (get-opposite-player player))))) 23)


					; Vertical Placements 


	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 9 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (is-player-at-position? state 9 (get-opposite-player player)) (not (is-player-at-position? state 21 (get-opposite-player player))))) 0)

	  ((and (not (is-player-at-position? state 3 player)) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 18 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (is-player-at-position? state 10 (get-opposite-player player)) (not (is-player-at-position? state 18 (get-opposite-player player))))) 18)

	  ((and (not (is-player-at-position? state 6 player)) (not (is-player-at-position? state 11 player))  (not (is-player-at-position? state 15 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (is-player-at-position? state 11 (get-opposite-player player)) (not (is-player-at-position? state 15 (get-opposite-player player))))) 15)

	  ((and (not (is-player-at-position? state 1 player)) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 7 player))
		(and (not (is-player-at-position? state 1 (get-opposite-player player))) (is-player-at-position? state 4 (get-opposite-player player)) (not (is-player-at-position? state 7 (get-opposite-player player))))) 1)

	  ((and (not (is-player-at-position? state 16 player)) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 22 player))
		(and (not (is-player-at-position? state 16 (get-opposite-player player))) (is-player-at-position? state 19 (get-opposite-player player)) (not (is-player-at-position? state 22 (get-opposite-player player))))) 22)

	  ((and (not (is-player-at-position? state 8 player)) (not (is-player-at-position? state 12 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (is-player-at-position? state 12 (get-opposite-player player)) (not (is-player-at-position? state 17 (get-opposite-player player))))) 8)

	  ((and (not (is-player-at-position? state 5 player)) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (is-player-at-position? state 13 (get-opposite-player player)) (not (is-player-at-position? state 20 (get-opposite-player player))))) 20)

	  ((and (not (is-player-at-position? state 2 player)) (not (is-player-at-position? state 14 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (is-player-at-position? state 14 (get-opposite-player player)) (not (is-player-at-position? state 23 (get-opposite-player player))))) 2)


					; Diagonal Placements 


	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 3 player))  (not (is-player-at-position? state 6 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (is-player-at-position? state 3 (get-opposite-player player)) (not (is-player-at-position? state 6 (get-opposite-player player))))) 0)

	  ((and (not (is-player-at-position? state 2 player)) (not (is-player-at-position? state 5 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (is-player-at-position? state 5 (get-opposite-player player)) (not (is-player-at-position? state 8 (get-opposite-player player))))) 8)

	  ((and (not (is-player-at-position? state 15 player)) (not (is-player-at-position? state 18 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (is-player-at-position? state 18 (get-opposite-player player)) (not (is-player-at-position? state 21 (get-opposite-player player))))) 15)

	  ((and (not (is-player-at-position? state 17 player)) (not (is-player-at-position? state 20 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-player-at-position? state 23 (get-opposite-player player))))) 23)




;;;;;;; The Following 20 sets provides the inteligence to lay a piece adjacent to an enemy piece if non of the above are met. 


	  ;; Horizontal Placments 
	  ;; 1
	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 1 player))  (not (is-player-at-position? state 2 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (is-player-at-position? state 1 (get-opposite-player player)) (not (is-player-at-position? state 2 (get-opposite-player player))))) 0)

	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 1 player))  (not (is-player-at-position? state 2 player))
		(and (is-player-at-position? state 0 (get-opposite-player player)) (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 2 (get-opposite-player player))))) 1)

	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 1 player))  (not (is-player-at-position? state 2 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 1 (get-opposite-player player))) (is-player-at-position? state 2 (get-opposite-player player)))) 1)

	  ;; 2
	  ((and (not (is-player-at-position? state 3 player)) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 5 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (is-player-at-position? state 4 (get-opposite-player player)) (not (is-player-at-position? state 5 (get-opposite-player player))))) 5)

	  ((and (not (is-player-at-position? state 3 player)) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 5 player))
		(and (is-player-at-position? state 3 (get-opposite-player player)) (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 (get-opposite-player player))))) 4)

	  ((and (not (is-player-at-position? state 3 player)) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 5 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 4 (get-opposite-player player))) (is-player-at-position? state 5 (get-opposite-player player)))) 4)


	  ;; 3
	  ((and (not (is-player-at-position? state 6 player)) (not (is-player-at-position? state 7 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (is-player-at-position? state 7 (get-opposite-player player)) (not (is-player-at-position? state 8 (get-opposite-player player))))) 6)

	  ((and (not (is-player-at-position? state 6 player)) (not (is-player-at-position? state 7 player))  (not (is-player-at-position? state 8 player))
		(and (is-player-at-position? state 6 (get-opposite-player player)) (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 8 (get-opposite-player player))))) 7)

	  ((and (not (is-player-at-position? state 6 player)) (not (is-player-at-position? state 7 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 7 (get-opposite-player player))) (is-player-at-position? state 8 (get-opposite-player player)))) 7)


	  ;; 4
	  ((and (not (is-player-at-position? state 9 player)) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 11 player))
		(and (not (is-player-at-position? state 9 (get-opposite-player player))) (is-player-at-position? state 10 (get-opposite-player player)) (not (is-player-at-position? state 11 (get-opposite-player player))))) 9)

	  ((and (not (is-player-at-position? state 9 player)) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 11 player))
		(and (is-player-at-position? state 9 (get-opposite-player player)) (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 11 (get-opposite-player player))))) 10)

	  ((and (not (is-player-at-position? state 9 player)) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 11 player))
		(and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 10 (get-opposite-player player))) (is-player-at-position? state 11 (get-opposite-player player)))) 10)

	  ;; 5
	  ((and (not (is-player-at-position? state 12 player)) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 14 player))
		(and (not (is-player-at-position? state 12 (get-opposite-player player))) (is-player-at-position? state 13 (get-opposite-player player)) (not (is-player-at-position? state 14 (get-opposite-player player))))) 12)

	  ((and (not (is-player-at-position? state 12 player)) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 14 player))
		(and (is-player-at-position? state 12 (get-opposite-player player)) (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 14 (get-opposite-player player))))) 13)

	  ((and (not (is-player-at-position? state 12 player)) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 14 player))
		(and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 13 (get-opposite-player player))) (is-player-at-position? state 14 (get-opposite-player player)))) 13)

	  ;; 6
	  ((and (not (is-player-at-position? state 15 player)) (not (is-player-at-position? state 16 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (is-player-at-position? state 16 (get-opposite-player player)) (not (is-player-at-position? state 17 (get-opposite-player player))))) 15)

	  ((and (not (is-player-at-position? state 15 player)) (not (is-player-at-position? state 16 player))  (not (is-player-at-position? state 17 player))
		(and (is-player-at-position? state 15 (get-opposite-player player)) (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 17 (get-opposite-player player))))) 16)

	  ((and (not (is-player-at-position? state 15 player)) (not (is-player-at-position? state 16 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 16 (get-opposite-player player))) (is-player-at-position? state 17 (get-opposite-player player)))) 16)

	  ;; 7
	  ((and (not (is-player-at-position? state 18 player)) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (is-player-at-position? state 19 (get-opposite-player player)) (not (is-player-at-position? state 20 (get-opposite-player player))))) 18)

	  ((and (not (is-player-at-position? state 18 player)) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 20 player))
		(and (is-player-at-position? state 18 (get-opposite-player player)) (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 20 (get-opposite-player player))))) 19)

	  ((and (not (is-player-at-position? state 18 player)) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 19 (get-opposite-player player))) (is-player-at-position? state 20 (get-opposite-player player)))) 19)


	  ;; 8
	  ((and (not (is-player-at-position? state 21 player)) (not (is-player-at-position? state 22 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (is-player-at-position? state 22 (get-opposite-player player)) (not (is-player-at-position? state 23 (get-opposite-player player))))) 21)

	  ((and (not (is-player-at-position? state 21 player)) (not (is-player-at-position? state 22 player))  (not (is-player-at-position? state 23 player))
		(and (is-player-at-position? state 21 (get-opposite-player player)) (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 22)

	  ((and (not (is-player-at-position? state 21 player)) (not (is-player-at-position? state 22 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 22 (get-opposite-player player))) (is-player-at-position? state 23 (get-opposite-player player)))) 22)


					; Vertical Placements 

	  ;; 9
	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 9 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (is-player-at-position? state 9 (get-opposite-player player)) (not (is-player-at-position? state 21 (get-opposite-player player))))) 0)

	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 9 player))  (not (is-player-at-position? state 21 player))
		(and (is-player-at-position? state 0 (get-opposite-player player)) (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 21 (get-opposite-player player))))) 9)

	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 9 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 9 (get-opposite-player player))) (is-player-at-position? state 21 (get-opposite-player player)))) 9)




	  ;; 10
	  ((and (not (is-player-at-position? state 3 player)) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 18 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (is-player-at-position? state 10 (get-opposite-player player)) (not (is-player-at-position? state 18 (get-opposite-player player))))) 3)

	  ((and (not (is-player-at-position? state 3 player)) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 18 player))
		(and (is-player-at-position? state 3 (get-opposite-player player)) (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 18 (get-opposite-player player))))) 10)

	  ((and (not (is-player-at-position? state 3 player)) (not (is-player-at-position? state 10 player))  (not (is-player-at-position? state 18 player))
		(and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 10 (get-opposite-player player))) (is-player-at-position? state 18 (get-opposite-player player)))) 10)


	  ;; 11
	  ((and (not (is-player-at-position? state 6 player)) (not (is-player-at-position? state 11 player))  (not (is-player-at-position? state 15 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (is-player-at-position? state 11 (get-opposite-player player)) (not (is-player-at-position? state 15 (get-opposite-player player))))) 6 )

	  ((and (not (is-player-at-position? state 6 player)) (not (is-player-at-position? state 11 player))  (not (is-player-at-position? state 15 player))
		(and (is-player-at-position? state 6 (get-opposite-player player)) (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 15 (get-opposite-player player))))) 11)

	  ((and (not (is-player-at-position? state 6 player)) (not (is-player-at-position? state 11 player))  (not (is-player-at-position? state 15 player))
		(and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 11 (get-opposite-player player))) (is-player-at-position? state 15 (get-opposite-player player)))) 11)



	  ;; 12
	  ((and (not (is-player-at-position? state 1 player)) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 7 player))
		(and (not (is-player-at-position? state 1 (get-opposite-player player))) (is-player-at-position? state 4 (get-opposite-player player)) (not (is-player-at-position? state 7 (get-opposite-player player))))) 1)

	  ((and (not (is-player-at-position? state 1 player)) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 7 player))
		(and (is-player-at-position? state 1 (get-opposite-player player)) (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 7 (get-opposite-player player))))) 4)

	  ((and (not (is-player-at-position? state 1 player)) (not (is-player-at-position? state 4 player))  (not (is-player-at-position? state 7 player))
		(and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 4 (get-opposite-player player))) (is-player-at-position? state 7 (get-opposite-player player)))) 4)


	  ;; 13
	  ((and (not (is-player-at-position? state 16 player)) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 22 player))
		(and (not (is-player-at-position? state 16 (get-opposite-player player))) (is-player-at-position? state 19 (get-opposite-player player)) (not (is-player-at-position? state 22 (get-opposite-player player))))) 16)

	  ((and (not (is-player-at-position? state 16 player)) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 22 player))
		(and (is-player-at-position? state 16 (get-opposite-player player)) (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 22 (get-opposite-player player))))) 19)

	  ((and (not (is-player-at-position? state 16 player)) (not (is-player-at-position? state 19 player))  (not (is-player-at-position? state 22 player))
		(and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 19 (get-opposite-player player))) (is-player-at-position? state 22 (get-opposite-player player)))) 19)


	  ;; 14
	  ((and (not (is-player-at-position? state 8 player)) (not (is-player-at-position? state 12 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (is-player-at-position? state 12 (get-opposite-player player)) (not (is-player-at-position? state 17 (get-opposite-player player))))) 8)

	  ((and (not (is-player-at-position? state 8 player)) (not (is-player-at-position? state 12 player))  (not (is-player-at-position? state 17 player))
		(and (is-player-at-position? state 8 (get-opposite-player player)) (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 17 (get-opposite-player player))))) 12)

	  ((and (not (is-player-at-position? state 8 player)) (not (is-player-at-position? state 12 player))  (not (is-player-at-position? state 17 player))
		(and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 12 (get-opposite-player player))) (is-player-at-position? state 17 (get-opposite-player player)))) 12)



	  ;; 15
	  ((and (not (is-player-at-position? state 5 player)) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (is-player-at-position? state 13 (get-opposite-player player)) (not (is-player-at-position? state 20 (get-opposite-player player))))) 5)

	  ((and (not (is-player-at-position? state 5 player)) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 20 player))
		(and (is-player-at-position? state 5 (get-opposite-player player)) (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 20 (get-opposite-player player))))) 13)

	  ((and (not (is-player-at-position? state 5 player)) (not (is-player-at-position? state 13 player))  (not (is-player-at-position? state 20 player))
		(and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 13 (get-opposite-player player))) (is-player-at-position? state 20 (get-opposite-player player)))) 13)



	  ;; 16
	  ((and (not (is-player-at-position? state 2 player)) (not (is-player-at-position? state 14 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (is-player-at-position? state 14 (get-opposite-player player)) (not (is-player-at-position? state 23 (get-opposite-player player))))) 2)

	  ((and (not (is-player-at-position? state 2 player)) (not (is-player-at-position? state 14 player))  (not (is-player-at-position? state 23 player))
		(and (is-player-at-position? state 2 (get-opposite-player player)) (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 14)

	  ((and (not (is-player-at-position? state 2 player)) (not (is-player-at-position? state 14 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 14 (get-opposite-player player))) (is-player-at-position? state 23 (get-opposite-player player)))) 14)




					; Diagonal Placements 

	  ;; 17
	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 3 player))  (not (is-player-at-position? state 6 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (is-player-at-position? state 3 (get-opposite-player player)) (not (is-player-at-position? state 6 (get-opposite-player player))))) 0)

	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 3 player))  (not (is-player-at-position? state 6 player))
		(and (is-player-at-position? state 0 (get-opposite-player player)) (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 6 (get-opposite-player player))))) 3)

	  ((and (not (is-player-at-position? state 0 player)) (not (is-player-at-position? state 3 player))  (not (is-player-at-position? state 6 player))
		(and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 3 (get-opposite-player player))) (is-player-at-position? state 6 (get-opposite-player player)))) 3)


	  ;; 18
	  ((and (not (is-player-at-position? state 2 player)) (not (is-player-at-position? state 5 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (is-player-at-position? state 5 (get-opposite-player player)) (not (is-player-at-position? state 8 (get-opposite-player player))))) 2)

	  ((and (not (is-player-at-position? state 2 player)) (not (is-player-at-position? state 5 player))  (not (is-player-at-position? state 8 player))
		(and (is-player-at-position? state 2 (get-opposite-player player)) (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 8 (get-opposite-player player))))) 5)

	  ((and (not (is-player-at-position? state 2 player)) (not (is-player-at-position? state 5 player))  (not (is-player-at-position? state 8 player))
		(and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 5 (get-opposite-player player))) (is-player-at-position? state 8 (get-opposite-player player)))) 5)


	  ;; 19
	  ((and (not (is-player-at-position? state 15 player)) (not (is-player-at-position? state 18 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (is-player-at-position? state 18 (get-opposite-player player)) (not (is-player-at-position? state 21 (get-opposite-player player))))) 15)

	  ((and (not (is-player-at-position? state 15 player)) (not (is-player-at-position? state 18 player))  (not (is-player-at-position? state 21 player))
		(and (is-player-at-position? state 15 (get-opposite-player player)) (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 21 (get-opposite-player player))))) 18)

	  ((and (not (is-player-at-position? state 15 player)) (not (is-player-at-position? state 18 player))  (not (is-player-at-position? state 21 player))
		(and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 18 (get-opposite-player player))) (is-player-at-position? state 21 (get-opposite-player player)))) 18)


	  ;; 20
	  ((and (not (is-player-at-position? state 17 player)) (not (is-player-at-position? state 20 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-player-at-position? state 23 (get-opposite-player player))))) 17)

	  ((and (not (is-player-at-position? state 17 player)) (not (is-player-at-position? state 20 player))  (not (is-player-at-position? state 23 player))
		(and (is-player-at-position? state 17 (get-opposite-player player)) (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 23 (get-opposite-player player))))) 20)

	  ((and (not (is-player-at-position? state 17 player)) (not (is-player-at-position? state 20 player))  (not (is-player-at-position? state 23 player))
		(and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 20 (get-opposite-player player))) (is-player-at-position? state 23 (get-opposite-player player)))) 20)


	  (else
	   (random-element places))))
  
  
  
  
      ;Returns a cons pair of what piece to move and where to move it. This is used in the second phase of the game.
      ;(cons source destination)
  (define (move state player)	
    (define my-places (get-positions-with-player state player))
    (define my-places-with-open-adjacent (map (lambda (x) (cons x (get-open-adjacent state x))) my-places))
    (define possible-moves (append-map (lambda (x) (map (lambda (y) (cons (car x) y)) (cdr x)))  my-places-with-open-adjacent))

    


     ;; The follow 20 sets provides the inteligence to move a piece to create a mill. If I have two adjacent pieces on a row, and a piece that can be moved to create a mill
     ;;  the following will move that piece and create a mill. 

     ;; 1
    (cond 
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 1 player) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 5 2))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 1 player) (is-player-at-position? state 14 player)
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 14 2))



     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 2 player) (is-player-at-position? state 3 player)
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 3 0)) 
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 2 player) (is-player-at-position? state 9 player)
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 9 0)) 



     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 2 player) (is-player-at-position? state 4 player)
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 4 1))

     ;; 2

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player) (is-player-at-position? state 8 player)
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 8 5))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player) (is-player-at-position? state 13 player)
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 13 5))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player) (is-player-at-position? state 2 player)
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 2 5))


     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player) (is-player-at-position? state 6 player)
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 6 3))
     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player) (is-player-at-position? state 10 player)
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 10 3))
     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player) (is-player-at-position? state 0 player)
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 0 3))


     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 5 player) (is-player-at-position? state 1 player)
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 1 4))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 5 player) (is-player-at-position? state 7 player)
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 7 4))


     ;; 3

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 7 player) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 5 8))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 7 player) (is-player-at-position? state 12 player)
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 12 8))


     ((and (is-player-at-position? state 7 player) (is-player-at-position? state 8 player) (is-player-at-position? state 3 player) 
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 3 6))
     ((and (is-player-at-position? state 7 player) (is-player-at-position? state 8 player) (is-player-at-position? state 11 player) 
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 11 6))


     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 8 player) (is-player-at-position? state 4 player) 
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 4 7))

     ;; 4

     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 10 player) (is-player-at-position? state 6 player)
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 6 11))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 10 player) (is-player-at-position? state 15 player)
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 15 11))


     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 11 player) (is-player-at-position? state 0 player)
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 0 9))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 11 player) (is-player-at-position? state 21 player)
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 21 9))


     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player) (is-player-at-position? state 3 player) 
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 3 10))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player) (is-player-at-position? state 18 player) 
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 18 10))

     ;; 5 

     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 13 player) (is-player-at-position? state 2 player)
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 2 14))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 13 player) (is-player-at-position? state 23 player)
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 23 14))


     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 14 player) (is-player-at-position? state 8 player) 
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 8 12))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 14 player) (is-player-at-position? state 17 player) 
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 17 12))


     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 5 13))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player) (is-player-at-position? state 20 player)
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 20 13))

     ;; 6

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 16 player) (is-player-at-position? state 12 player)
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 12 17))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 16 player) (is-player-at-position? state 20 player)
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 20 17))


     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 17 player) (is-player-at-position? state 11 player)
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 11 15))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 17 player) (is-player-at-position? state 18 player)
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 18 15))


     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 17 player) (is-player-at-position? state 19 player)
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 19 16))

     ;; 7

     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (is-player-at-position? state 17 player)
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 17 20))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (is-player-at-position? state 23 player)
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 23 20))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (is-player-at-position? state 13 player)
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 13 20))


     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 15 player) 
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 15 18))
     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 21 player) 
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 21 18))
     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 10 player) 
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 10 18))


     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 20 player) (is-player-at-position? state 16 player)
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 16 19))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 20 player) (is-player-at-position? state 22 player)
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 22 19))

     ;; 8 

     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 22 player) (is-player-at-position? state 14 player)
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 14 23)) 
     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 22 player) (is-player-at-position? state 20 player)
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 20 23))


     ((and (is-player-at-position? state 22 player) (is-player-at-position? state 23 player) (is-player-at-position? state 9 player) 
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 9 21))
     ((and (is-player-at-position? state 22 player) (is-player-at-position? state 23 player) (is-player-at-position? state 18 player) 
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 18 21))


     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 23 player) (is-player-at-position? state 19 player)
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 19 22))

     ;; 9 

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 9 player) (is-player-at-position? state 18 player)
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 18 21))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 9 player) (is-player-at-position? state 22 player)
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 22 21))


     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 21 player) (is-player-at-position? state 1 player)
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 1 0))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 21 player) (is-player-at-position? state 3 player)
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 3 0))


     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 21 player) (is-player-at-position? state 10 player)
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 10 9))

     ;; 10

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 15 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 15 18))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 19 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 19 18))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 21 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 21 18))


     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 4 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 4 3))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 6 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 6 3))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 0 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 0 3))


     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 18 player) (is-player-at-position? state 9 player)
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 9 10))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 18 player) (is-player-at-position? state 11 player)
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 11 10))

     ;; 11

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 11 player) (is-player-at-position? state 16 player)
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 16 15))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 11 player) (is-player-at-position? state 18 player)
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 18 15))


     ((and (is-player-at-position? state 11 player) (is-player-at-position? state 15 player) (is-player-at-position? state 3 player)
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 3 6)) 
     ((and (is-player-at-position? state 11 player) (is-player-at-position? state 15 player) (is-player-at-position? state 7 player)
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 7 6)) 


     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 15 player) (is-player-at-position? state 10 player)
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 10 11))

     ;; 12

     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 4 player) (is-player-at-position? state 6 player)
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 6 7))
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 4 player) (is-player-at-position? state 8 player)
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 8 7))


     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 7 player) (is-player-at-position? state 0 player)
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 0 1))
     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 7 player) (is-player-at-position? state 2 player)
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 2 1))


     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player) (is-player-at-position? state 3 player)
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 3 4))
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 5 4))

     ;; 13

     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 19 player) (is-player-at-position? state 21 player)
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 21 22))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 19 player) (is-player-at-position? state 23 player)
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 23 22))


     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 22 player) (is-player-at-position? state 15 player)
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 15 16))
     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 22 player) (is-player-at-position? state 17 player)
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 17 16))


     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 22 player) (is-player-at-position? state 18 player) 
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 18 19))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 22 player) (is-player-at-position? state 20 player) 
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 20 19))

     ;; 14

     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 12 player) (is-player-at-position? state 16 player)
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 16 17))
     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 12 player) (is-player-at-position? state 20 player)
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 20 17))


     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 17 player) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 5 8))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 17 player) (is-player-at-position? state 7 player)
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 7 8))


     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 17 player) (is-player-at-position? state 13 player)
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 13 12)) 

     ;; 15 

     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 17 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 17 20)) 
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 19 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 19 20)) 
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 23 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 23 20)) 


     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 2 player) 
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 2 5))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 4 player) 
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 4 5))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 8 player) 
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 8 5))


     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 20 player) (is-player-at-position? state 12 player) 
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 12 13))
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 20 player) (is-player-at-position? state 14 player) 
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 14 13))

     ;; 16

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 14 player) (is-player-at-position? state 20 player) 
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 20 23))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 14 player) (is-player-at-position? state 22 player) 
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 22 23))


     ((and (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) (is-player-at-position? state 1 player) 
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 1 2))
     ((and (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) (is-player-at-position? state 5 player) 
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 5 2))


     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 23 player) (is-player-at-position? state 13 player) 
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 13 14))

     ;; 17 

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 3 player) (is-player-at-position? state 7 player) 
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 7 6))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 3 player) (is-player-at-position? state 11 player) 
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 11 6))


     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 6 player) (is-player-at-position? state 1 player) 
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 1 0))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 6 player) (is-player-at-position? state 9 player) 
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 9 0))


     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player) (is-player-at-position? state 4 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 4 3))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player) (is-player-at-position? state 10 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 10 3))

     ;; 18 

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 5 player) (is-player-at-position? state 7 player) 
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 7 8)) 
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 5 player) (is-player-at-position? state 12 player) 
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 12 8)) 


     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 8 player) (is-player-at-position? state 1 player) 
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 1 2))
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 8 player) (is-player-at-position? state 14 player) 
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 14 2))


     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player) (is-player-at-position? state 4 player) 
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 4 5))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player) (is-player-at-position? state 13 player) 
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 13 5))

     ;; 19

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 18 player) (is-player-at-position? state 9 player) 
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 9 21))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 18 player) (is-player-at-position? state 22 player) 
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 22 21))


     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 21 player) (is-player-at-position? state 11 player) 
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 11 15))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 21 player) (is-player-at-position? state 16 player) 
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 16 15))


     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player) (is-player-at-position? state 10 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 10 18))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player) (is-player-at-position? state 19 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 19 18))

     ;; 20

     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 20 player) (is-player-at-position? state 14 player) 
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 14 23))
     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 20 player) (is-player-at-position? state 22 player) 
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 22 23))


     ((and (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) (is-player-at-position? state 12 player) 
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 12 17))
     ((and (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) (is-player-at-position? state 16 player) 
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 16 17))


     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player) (is-player-at-position? state 13 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 13 20))
     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player) (is-player-at-position? state 19 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 19 20))






     ;; Block Opponents Mills with movement


     ;;;;;;;; The following 20 sets provides the inteligence to move a piece in order to block an opponents mill. It checks to see if two opponents pieces are next to each other,
     ;;;;;;;;   if they are, it will move a piece next to those two adjacent pieces on the same line (row) that they are adjacent on. 

     ;; 1

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 5 2))
     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 14 player)
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 14 2))



     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 3 player)
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 3 0)) 
     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 9 player)
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 9 0)) 



     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 4 player)
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 4 1))

     ;; 2

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 8 player)
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 8 5))
     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 13 player)
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 13 5))


     ((and (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 6 player)
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 6 3))
     ((and (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 10 player)
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 10 3))


     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 1 player)
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 1 4))
     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 7 player)
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 7 4))


     ;; 3

     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 5 8))
     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (is-player-at-position? state 12 player)
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 12 8))


     ((and (is-player-at-position? state 7 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 3 player) 
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 3 6))
     ((and (is-player-at-position? state 7 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 11 player) 
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 11 6))


     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 4 player) 
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 4 7))

     ;; 4

     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 6 player)
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 6 11))
     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 15 player)
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 15 11))


     ((and (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (is-player-at-position? state 0 player)
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 0 9))
     ((and (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (is-player-at-position? state 21 player)
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 21 9))


     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (is-player-at-position? state 3 player) 
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 3 10))
     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (is-player-at-position? state 18 player) 
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 18 10))

     ;; 5 

     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 2 player)
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 2 14))
     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 23 player)
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 23 14))


     ((and (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (is-player-at-position? state 8 player) 
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 8 12))
     ((and (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (is-player-at-position? state 17 player) 
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 17 12))


     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 5 13))
     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (is-player-at-position? state 20 player)
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 20 13))

     ;; 6

     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 12 player)
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 12 17))
     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 20 player)
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 20 17))


     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 11 player)
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 11 15))
     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 18 player)
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 18 15))


     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 19 player)
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 19 16))

     ;; 7

     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 17 player)
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 17 20))
     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 23 player)
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 23 20))


     ((and (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 15 player) 
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 15 18))
     ((and (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 21 player) 
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 21 18))


     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 16 player)
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 16 19))
     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 22 player)
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 22 19))

     ;; 8 

     ((and (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (is-player-at-position? state 14 player)
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 14 23)) 
     ((and (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (is-player-at-position? state 20 player)
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 20 23))


     ((and (is-player-at-position? state 22 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (is-player-at-position? state 9 player) 
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 9 21))
     ((and (is-player-at-position? state 22 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (is-player-at-position? state 18 player) 
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 18 21))


     ((and (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (is-player-at-position? state 19 player)
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 19 22))

     ;; 9 

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 18 player)
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 18 21))
     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 22 player)
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 22 21))


     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 1 player)
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 1 0))
     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 3 player)
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 3 0))


     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 10 player)
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 10 9))

     ;; 10

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 15 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 15 18))
     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 19 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 19 18))
     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 21 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 21 18))


     ((and (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 4 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 4 3))
     ((and (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 6 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 6 3))
     ((and (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 0 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 0 3))


     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 9 player)
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 9 10))
     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 11 player)
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 11 10))

     ;; 11

     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (is-player-at-position? state 16 player)
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 16 15))
     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (is-player-at-position? state 18 player)
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 18 15))


     ((and (is-player-at-position? state 11 (get-opposite-player player)) (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 3 player)
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 3 6)) 
     ((and (is-player-at-position? state 11 (get-opposite-player player)) (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 7 player)
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 7 6)) 


     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 10 player)
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 10 11))

     ;; 12

     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 6 player)
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 6 7))
     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 8 player)
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 8 7))


     ((and (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (is-player-at-position? state 0 player)
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 0 1))
     ((and (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (is-player-at-position? state 2 player)
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 2 1))


     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (is-player-at-position? state 3 player)
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 3 4))
     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 5 4))

     ;; 13

     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 21 player)
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 21 22))
     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 23 player)
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 23 22))


     ((and (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (is-player-at-position? state 15 player)
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 15 16))
     ((and (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (is-player-at-position? state 17 player)
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 17 16))


     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (is-player-at-position? state 18 player) 
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 18 19))
     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (is-player-at-position? state 20 player) 
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 20 19))

     ;; 14

     ((and (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 16 player)
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 16 17))
     ((and (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 20 player)
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 20 17))


     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 5 8))
     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 7 player)
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 7 8))


     ((and (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 13 player)
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 13 12)) 

     ;; 15 

     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 17 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 17 20)) 
     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 19 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 19 20)) 
     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 23 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 23 20)) 


     ((and (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 2 player) 
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 2 5))
     ((and (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 4 player) 
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 4 5))
     ((and (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 8 player) 
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 8 5))


     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 12 player) 
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 12 13))
     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 14 player) 
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 14 13))

     ;; 16

     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (is-player-at-position? state 20 player) 
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 20 23))
     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (is-player-at-position? state 22 player) 
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 22 23))


     ((and (is-player-at-position? state 14 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (is-player-at-position? state 1 player) 
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 1 2))
     ((and (is-player-at-position? state 14 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (is-player-at-position? state 5 player) 
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 5 2))


     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (is-player-at-position? state 13 player) 
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 13 14))

     ;; 17 

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 7 player) 
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 7 6))
     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 11 player) 
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 11 6))


     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 1 player) 
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 1 0))
     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 9 player) 
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 9 0))


     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 4 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 4 3))
     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 10 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 10 3))

     ;; 18 

     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 7 player) 
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 7 8)) 
     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 12 player) 
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 12 8)) 


     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 1 player) 
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 1 2))
     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 14 player) 
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 14 2))


     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 4 player) 
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 4 5))
     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 13 player) 
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 13 5))

     ;; 19

     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 9 player) 
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 9 21))
     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 22 player) 
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 22 21))


     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 11 player) 
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 11 15))
     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 16 player) 
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 16 15))


     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 10 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 10 18))
     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 19 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 19 18))

     ;; 20

     ((and (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 14 player) 
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 14 23))
     ((and (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 22 player) 
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 22 23))


     ((and (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (is-player-at-position? state 12 player) 
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 12 17))
     ((and (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (is-player-at-position? state 16 player) 
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 16 17))


     ((and (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (is-player-at-position? state 13 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 13 20))
     ((and (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (is-player-at-position? state 19 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 19 20))



     ;; The following 20 sets provides the inteligence to move a piece one step closer to making a mill if possible. This set does NOT have the ability to make a mill, 
     ;;    only to move closer to making one. 


     ;; 1

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 1 player) (is-player-at-position? state 8 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 8 5))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 1 player) (is-player-at-position? state 23 player) (not (is-player-at-position? state 14 player))
	   (not (is-player-at-position? state 14 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 23 14))



     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 2 player) (is-player-at-position? state 6 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 6 3)) 
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 2 player) (is-player-at-position? state 21 player) (not (is-player-at-position? state 9 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 21 9)) 



     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 2 player) (is-player-at-position? state 7 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 7 4))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 2 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 3 4))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 2 player) (is-player-at-position? state 5 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 5 4))

     ;; 2

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player) (is-player-at-position? state 7 player) (not (is-player-at-position? state 8 player))
	   (not (is-player-at-position? state 8 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 7 8))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player) (is-player-at-position? state 12 player) (not (is-player-at-position? state 8 player))
	   (not (is-player-at-position? state 8 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 12 8))

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player) (is-player-at-position? state 20 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 20 13))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player) (is-player-at-position? state 14 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 14 13))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player) (is-player-at-position? state 12 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 12 13))


     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player) (is-player-at-position? state 11 player) (not (is-player-at-position? state 6 player))
	   (not (is-player-at-position? state 6 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 11 6))
     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player) (is-player-at-position? state 7 player) (not (is-player-at-position? state 6 player))
	   (not (is-player-at-position? state 6 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 7 6))

     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player) (is-player-at-position? state 9 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 9 10))
     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player) (is-player-at-position? state 11 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 11 10))
     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 18 10))


     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 5 player) (is-player-at-position? state 0 player) (not (is-player-at-position? state 1 player))
	   (not (is-player-at-position? state 1 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 0 1))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 5 player) (is-player-at-position? state 2 player) (not (is-player-at-position? state 1 player))
	   (not (is-player-at-position? state 1 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 2 1))

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 5 player) (is-player-at-position? state 6 player) (not (is-player-at-position? state 7 player))
	   (not (is-player-at-position? state 7 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 6 7))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 5 player) (is-player-at-position? state 8 player) (not (is-player-at-position? state 7 player))
	   (not (is-player-at-position? state 7 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 8 7))


     ;; 3

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 7 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 4 5))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 7 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 13 5))

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 7 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 12 player))
	   (not (is-player-at-position? state 12 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 13 12))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 7 player) (is-player-at-position? state 17 player) (not (is-player-at-position? state 12 player))
	   (not (is-player-at-position? state 12 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 17 12))


     ((and (is-player-at-position? state 7 player) (is-player-at-position? state 8 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 4 3))
     ((and (is-player-at-position? state 7 player) (is-player-at-position? state 8 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 10 3))

     ((and (is-player-at-position? state 7 player) (is-player-at-position? state 8 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 11 player))
	   (not (is-player-at-position? state 11 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 10 11))
     ((and (is-player-at-position? state 7 player) (is-player-at-position? state 8 player) (is-player-at-position? state 15 player) (not (is-player-at-position? state 11 player))
	   (not (is-player-at-position? state 11 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 15 11))


     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 8 player) (is-player-at-position? state 1 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 1 4))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 8 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 3 4))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 8 player) (is-player-at-position? state 5 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 5 4))

     ;; 4

     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 10 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 6 player))
	   (not (is-player-at-position? state 6 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 3 6))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 10 player) (is-player-at-position? state 7 player) (not (is-player-at-position? state 6 player))
	   (not (is-player-at-position? state 6 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 7 6))

     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 15 player))
	   (not (is-player-at-position? state 15 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 18 15))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 10 player) (is-player-at-position? state 16 player) (not (is-player-at-position? state 15 player))
	   (not (is-player-at-position? state 15 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 16 15))


     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 11 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 0 player))
	   (not (is-player-at-position? state 0 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 3 0))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 11 player) (is-player-at-position? state 1 player) (not (is-player-at-position? state 0 player))
	   (not (is-player-at-position? state 0 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 1 0))

     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 11 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 21 player))
	   (not (is-player-at-position? state 21 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 18 21))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 11 player) (is-player-at-position? state 22 player) (not (is-player-at-position? state 21 player))
	   (not (is-player-at-position? state 21 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 22 21))


     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player) (is-player-at-position? state 6 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 6 3))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 4 3))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player) (is-player-at-position? state 0 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 0 3))

     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player) (is-player-at-position? state 15 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 15 3))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player) (is-player-at-position? state 21 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 21 3))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 19 3))



     ;; 5 

     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 13 player) (is-player-at-position? state 1 player) (not (is-player-at-position? state 2 player))
	   (not (is-player-at-position? state 2 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 1 2))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 13 player) (is-player-at-position? state 5 player) (not (is-player-at-position? state 2 player))
	   (not (is-player-at-position? state 2 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 5 2))

     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (not (is-player-at-position? state 23 player))
	   (not (is-player-at-position? state 23 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 20 23))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 13 player) (is-player-at-position? state 22 player) (not (is-player-at-position? state 23 player))
	   (not (is-player-at-position? state 23 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 22 23))


     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 14 player) (is-player-at-position? state 7 player)  (not (is-player-at-position? state 8 player))
	   (not (is-player-at-position? state 8 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 7 8))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 14 player) (is-player-at-position? state 5 player)  (not (is-player-at-position? state 8 player))
	   (not (is-player-at-position? state 8 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 5 8))

     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 14 player) (is-player-at-position? state 16 player)  (not (is-player-at-position? state 17 player))
	   (not (is-player-at-position? state 17 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 16 17))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 14 player) (is-player-at-position? state 20 player)  (not (is-player-at-position? state 17 player))
	   (not (is-player-at-position? state 17 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 20 17))


     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 4 5))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player) (is-player-at-position? state 8 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 8 5))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player) (is-player-at-position? state 2 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 2 5))

     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 19 20))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 23 20))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player) (is-player-at-position? state 17 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 17 20))

     ;; 6

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 16 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 12 player))
	   (not (is-player-at-position? state 12 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 13 12))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 16 player) (is-player-at-position? state 8 player) (not (is-player-at-position? state 12 player))
	   (not (is-player-at-position? state 12 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 8 12))

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 16 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 17 20))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 16 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 13 20))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 16 player) (is-player-at-position? state 23 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 23 20))


     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 17 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 11 player))
	   (not (is-player-at-position? state 11 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 10 11))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 17 player) (is-player-at-position? state 6 player) (not (is-player-at-position? state 11 player))
	   (not (is-player-at-position? state 11 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 6 11))

     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 17 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 10 18))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 17 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 19 18))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 17 player) (is-player-at-position? state 21 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 21 18))


     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 17 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 18 19))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 17 player) (is-player-at-position? state 20 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 20 19))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 17 player) (is-player-at-position? state 22 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 22 19))

     ;; 7

     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (is-player-at-position? state 12 player) (not (is-player-at-position? state 17 player))
	   (not (is-player-at-position? state 17 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 12 17))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (is-player-at-position? state 16 player) (not (is-player-at-position? state 17 player))
	   (not (is-player-at-position? state 17 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 16 17))

     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (is-player-at-position? state 22 player) (not (is-player-at-position? state 23 player))
	   (not (is-player-at-position? state 23 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 22 23))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (is-player-at-position? state 14 player) (not (is-player-at-position? state 23 player))
	   (not (is-player-at-position? state 23 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 14 23))

     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (is-player-at-position? state 12 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 12 13))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (is-player-at-position? state 14 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 14 13))


     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 11 player) (not (is-player-at-position? state 15 player))
	   (not (is-player-at-position? state 15 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 11 15))
     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 16 player) (not (is-player-at-position? state 15 player))
	   (not (is-player-at-position? state 15 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 16 15))

     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 11 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 11 10))
     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 9 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 9 10))
     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 3 10))

     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 22 player) (not (is-player-at-position? state 21 player))
	   (not (is-player-at-position? state 21 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 22 21))
     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 9 player) (not (is-player-at-position? state 21 player))
	   (not (is-player-at-position? state 21 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 9 21))


     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 20 player) (is-player-at-position? state 15 player) (not (is-player-at-position? state 16 player))
	   (not (is-player-at-position? state 16 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 15 16))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 20 player) (is-player-at-position? state 17 player) (not (is-player-at-position? state 16 player))
	   (not (is-player-at-position? state 16 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 17 16))

     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 20 player) (is-player-at-position? state 21 player) (not (is-player-at-position? state 22 player))
	   (not (is-player-at-position? state 22 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 21 22))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) (not (is-player-at-position? state 22 player))
	   (not (is-player-at-position? state 22 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 23 22))

     ;; 8 

     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 22 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 14 player))
	   (not (is-player-at-position? state 14 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 13 14)) 
     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 22 player) (is-player-at-position? state 2 player) (not (is-player-at-position? state 14 player))
	   (not (is-player-at-position? state 14 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 2 14))

     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 22 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 19 20)) 
     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 22 player) (is-player-at-position? state 17 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 17 20))
     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 22 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 13 20))


     ((and (is-player-at-position? state 22 player) (is-player-at-position? state 23 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 9 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 10 9))
     ((and (is-player-at-position? state 22 player) (is-player-at-position? state 23 player) (is-player-at-position? state 0 player) (not (is-player-at-position? state 9 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 0 9))

     ((and (is-player-at-position? state 22 player) (is-player-at-position? state 23 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 10 18))
     ((and (is-player-at-position? state 22 player) (is-player-at-position? state 23 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 19 18))
     ((and (is-player-at-position? state 22 player) (is-player-at-position? state 23 player) (is-player-at-position? state 15 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 15 18))


     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 23 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 18 19))
     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 23 player) (is-player-at-position? state 20 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 20 19))

     ;; 9 

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 9 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 19 18))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 9 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 10 18))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 9 player) (is-player-at-position? state 15 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 15 18))

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 9 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 22 player))
	   (not (is-player-at-position? state 22 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 19 22))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 9 player) (is-player-at-position? state 23 player) (not (is-player-at-position? state 22 player))
	   (not (is-player-at-position? state 22 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 23 22))


     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 21 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 4 3))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 21 player) (is-player-at-position? state 6 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 6 3))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 21 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 10 3))

     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 21 player) (is-player-at-position? state 2 player) (not (is-player-at-position? state 1 player))
	   (not (is-player-at-position? state 1 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 2 1))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 21 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 1 player))
	   (not (is-player-at-position? state 1 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 4 1))


     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 21 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 3 10))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 21 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 18 10))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 21 player) (is-player-at-position? state 11 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 11 10))

     ;; 10

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 16 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 16 19))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 20 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 20 19))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 22 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 22 19))

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 11 player) (not (is-player-at-position? state 15 player))
	   (not (is-player-at-position? state 15 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 11 15))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 16 player) (not (is-player-at-position? state 15 player))
	   (not (is-player-at-position? state 15 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 16 15))

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 9 player) (not (is-player-at-position? state 21 player))
	   (not (is-player-at-position? state 21 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 9 21))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 22 player) (not (is-player-at-position? state 21 player))
	   (not (is-player-at-position? state 21 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 22 21))



     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 1 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 1 4))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 5 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 5 4))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 7 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 7 4))

     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 7 player) (not (is-player-at-position? state 6 player))
	   (not (is-player-at-position? state 6 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 7 6))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 11 player) (not (is-player-at-position? state 6 player))
	   (not (is-player-at-position? state 6 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 11 6))

     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 1 player) (not (is-player-at-position? state 0 player))
	   (not (is-player-at-position? state 0 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 1 0))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 9 player) (not (is-player-at-position? state 0 player))
	   (not (is-player-at-position? state 0 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 9 0))


     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 18 player) (is-player-at-position? state 6 player) (not (is-player-at-position? state 11 player))
	   (not (is-player-at-position? state 11 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 6 11))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 18 player) (is-player-at-position? state 15 player) (not (is-player-at-position? state 11 player))
	   (not (is-player-at-position? state 11 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 15 11))

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 18 player) (is-player-at-position? state 0 player) (not (is-player-at-position? state 9 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 0 9))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 18 player) (is-player-at-position? state 21 player) (not (is-player-at-position? state 9 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 21 9))

     ;; 11

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 11 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 10 18))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 11 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 19 18 ))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 11 player) (is-player-at-position? state 21 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 21 18)) 

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 11 player) (is-player-at-position? state 17 player) (not (is-player-at-position? state 16 player))
	   (not (is-player-at-position? state 16 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 17 16))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 11 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 16 player))
	   (not (is-player-at-position? state 16 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 19 16))


     ((and (is-player-at-position? state 11 player) (is-player-at-position? state 15 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 4 3)) 
     ((and (is-player-at-position? state 11 player) (is-player-at-position? state 15 player) (is-player-at-position? state 0 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 0 3)) 
     ((and (is-player-at-position? state 11 player) (is-player-at-position? state 15 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 10 3)) 

     ((and (is-player-at-position? state 11 player) (is-player-at-position? state 15 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 7 player))
	   (not (is-player-at-position? state 7 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 4 7)) 
     ((and (is-player-at-position? state 11 player) (is-player-at-position? state 15 player) (is-player-at-position? state 8 player) (not (is-player-at-position? state 7 player))
	   (not (is-player-at-position? state 7 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 8 7)) 


     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 15 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 3 10))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 15 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 18 10))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 15 player) (is-player-at-position? state 9 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 9 10))

     ;; 12

     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 4 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 6 player))
	   (not (is-player-at-position? state 6 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 3 6))
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 4 player) (is-player-at-position? state 11 player) (not (is-player-at-position? state 6 player))
	   (not (is-player-at-position? state 6 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 11 6))

     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 4 player) (is-player-at-position? state 12 player) (not (is-player-at-position? state 8 player))
	   (not (is-player-at-position? state 8 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 12 8))
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 4 player) (is-player-at-position? state 5 player) (not (is-player-at-position? state 8 player))
	   (not (is-player-at-position? state 8 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 5 8))


     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 7 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 0 player))
	   (not (is-player-at-position? state 0 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 3 0))
     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 7 player) (is-player-at-position? state 9 player) (not (is-player-at-position? state 0 player))
	   (not (is-player-at-position? state 0 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 9 0))

     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 7 player) (is-player-at-position? state 5 player) (not (is-player-at-position? state 2 player))
	   (not (is-player-at-position? state 2 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 5 2))
     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 7 player) (is-player-at-position? state 14 player) (not (is-player-at-position? state 2 player))
	   (not (is-player-at-position? state 2 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 14 2))


     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player) (is-player-at-position? state 0 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 0 3))
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player) (is-player-at-position? state 6 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 6 3))
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 3 player))
	   (not (is-player-at-position? state 3 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 10 3))

     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player) (is-player-at-position? state 2 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 2 5))
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player) (is-player-at-position? state 8 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 8 5))
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 13 5))

     ;; 13

     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 19 player) (is-player-at-position? state 9 player) (not (is-player-at-position? state 21 player))
	   (not (is-player-at-position? state 21 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 9 21))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 19 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 21 player))
	   (not (is-player-at-position? state 21 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 18 21))

     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 19 player) (is-player-at-position? state 14 player) (not (is-player-at-position? state 23 player))
	   (not (is-player-at-position? state 23 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 14 23))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (not (is-player-at-position? state 23 player))
	   (not (is-player-at-position? state 23 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 20 23))


     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 22 player) (is-player-at-position? state 11 player) (not (is-player-at-position? state 15 player))
	   (not (is-player-at-position? state 15 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 11 15))
     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 22 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 15 player))
	   (not (is-player-at-position? state 15 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 18 15))

     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 22 player) (is-player-at-position? state 12 player) (not (is-player-at-position? state 17 player))
	   (not (is-player-at-position? state 17 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 12 17))
     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 22 player) (is-player-at-position? state 20 player) (not (is-player-at-position? state 17 player))
	   (not (is-player-at-position? state 17 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 20 17))


     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 22 player) (is-player-at-position? state 15 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 15 18))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 22 player) (is-player-at-position? state 21 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 21 18))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 22 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 18 player))
	   (not (is-player-at-position? state 18 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 10 18))

     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 22 player) (is-player-at-position? state 17 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 17 20))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 22 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 19 20))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 22 player) (is-player-at-position? state 23 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 23 20))

     ;; 14

     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 12 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 16 player))
	   (not (is-player-at-position? state 16 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 19 16))
     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 12 player) (is-player-at-position? state 15 player) (not (is-player-at-position? state 16 player))
	   (not (is-player-at-position? state 16 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 15 16))

     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 12 player) (is-player-at-position? state 23 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 23 20))
     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 12 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 17 20))
     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 12 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 19 20))


     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 17 player) (is-player-at-position? state 6 player) (not (is-player-at-position? state 7 player))
	   (not (is-player-at-position? state 7 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 6 7))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 17 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 7 player))
	   (not (is-player-at-position? state 7 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 4 7))

     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 17 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 4 5))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 17 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 13 5))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 17 player) (is-player-at-position? state 2 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 2 5))


     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 17 player) (is-player-at-position? state 5 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 5 13)) 
     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 17 player) (is-player-at-position? state 20 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 20 13)) 
     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 17 player) (is-player-at-position? state 14 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 14 13)) 

     ;; 15 

     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 16 player) (not (is-player-at-position? state 17 player))
	   (not (is-player-at-position? state 17 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 16 17)) 
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 12 player) (not (is-player-at-position? state 17 player))
	   (not (is-player-at-position? state 17 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 12 17)) 

     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 22 player) (not (is-player-at-position? state 23 player))
	   (not (is-player-at-position? state 23 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 22 23)) 
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 14 player) (not (is-player-at-position? state 23 player))
	   (not (is-player-at-position? state 23 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 14 23)) 

     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 16 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 16 19)) 
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 18 19)) 
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 22 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 22 19))


     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 1 player) (not (is-player-at-position? state 2 player))
	   (not (is-player-at-position? state 2 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 1 2))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 14 player) (not (is-player-at-position? state 2 player))
	   (not (is-player-at-position? state 2 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 14 2))

     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 7 player) (not (is-player-at-position? state 8 player))
	   (not (is-player-at-position? state 8 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 7 8))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 12 player) (not (is-player-at-position? state 8 player))
	   (not (is-player-at-position? state 8 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 12 8))

     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 1 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 1 4))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 7 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 7 4))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 3 4))


     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 20 player) (is-player-at-position? state 8 player) (not (is-player-at-position? state 12 player))
	   (not (is-player-at-position? state 12 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 8 12))
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 20 player) (is-player-at-position? state 17 player) (not (is-player-at-position? state 12 player))
	   (not (is-player-at-position? state 12 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 17 12))

     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 20 player) (is-player-at-position? state 2 player) (not (is-player-at-position? state 14 player))
	   (not (is-player-at-position? state 14 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 2 14))
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) (not (is-player-at-position? state 14 player))
	   (not (is-player-at-position? state 14 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 23 14))

     ;; 16

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 14 player) (is-player-at-position? state 21 player) (not (is-player-at-position? state 22 player))
	   (not (is-player-at-position? state 22 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 21 22))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 14 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 22 player))
	   (not (is-player-at-position? state 22 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 19 22))

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 14 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 19 20))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 14 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 13 20))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 14 player) (is-player-at-position? state 17 player) (not (is-player-at-position? state 20 player))
	   (not (is-player-at-position? state 20 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 17 20))


     ((and (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) (is-player-at-position? state 0 player) (not (is-player-at-position? state 1 player))
	   (not (is-player-at-position? state 1 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 0 1))
     ((and (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 1 player))
	   (not (is-player-at-position? state 1 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 4 1))

     ((and (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 4 5))
     ((and (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) (is-player-at-position? state 8 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 8 5))
     ((and (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 5 player))
	   (not (is-player-at-position? state 5 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 13 5))


     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 23 player) (is-player-at-position? state 5 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 5 13))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 23 player) (is-player-at-position? state 20 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 20 13))

     ;; 17 

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 3 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 7 player))
	   (not (is-player-at-position? state 7 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 4 7))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 3 player) (is-player-at-position? state 8 player) (not (is-player-at-position? state 7 player))
	   (not (is-player-at-position? state 7 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 8 7))

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 11 player))
	   (not (is-player-at-position? state 11 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 10 11))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 3 player) (is-player-at-position? state 15 player) (not (is-player-at-position? state 11 player))
	   (not (is-player-at-position? state 11 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 15 11))


     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 6 player) (is-player-at-position? state 2 player) (not (is-player-at-position? state 1 player))
	   (not (is-player-at-position? state 1 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 2 1))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 6 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 1 player))
	   (not (is-player-at-position? state 1 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 4 1))

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 6 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 9 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 10 9))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 6 player) (is-player-at-position? state 21 player) (not (is-player-at-position? state 9 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 21 9))


     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player) (is-player-at-position? state 9 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 9 10))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player) (is-player-at-position? state 11 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 11 10))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 18 10))

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player) (is-player-at-position? state 1 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 1 4))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player) (is-player-at-position? state 7 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 7 4))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player) (is-player-at-position? state 5 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 5 4))

     ;; 18 

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 5 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 7 player))
	   (not (is-player-at-position? state 7 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 4 7)) 
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 5 player) (is-player-at-position? state 6 player) (not (is-player-at-position? state 7 player))
	   (not (is-player-at-position? state 7 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 6 7)) 

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 12 player))
	   (not (is-player-at-position? state 12 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 13 12)) 
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 5 player) (is-player-at-position? state 17 player) (not (is-player-at-position? state 12 player))
	   (not (is-player-at-position? state 12 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 17 12)) 


     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 8 player) (is-player-at-position? state 4 player) (not (is-player-at-position? state 1 player))
	   (not (is-player-at-position? state 1 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 4 1))
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 8 player) (is-player-at-position? state 0 player) (not (is-player-at-position? state 1 player))
	   (not (is-player-at-position? state 1 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 0 1))

     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 8 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 14 player))
	   (not (is-player-at-position? state 14 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 13 14))
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 8 player) (is-player-at-position? state 23 player) (not (is-player-at-position? state 14 player))
	   (not (is-player-at-position? state 14 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 23 14))


     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player) (is-player-at-position? state 1 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 1 4))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player) (is-player-at-position? state 7 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 7 4))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 4 player))
	   (not (is-player-at-position? state 4 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 3 4))

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player) (is-player-at-position? state 12 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 12 13))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player) (is-player-at-position? state 14 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 14 13))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player) (is-player-at-position? state 20 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 20 13))

     ;; 19

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 18 player) (is-player-at-position? state 0 player) (not (is-player-at-position? state 9 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 0 9))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 18 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 9 player))
	   (not (is-player-at-position? state 9 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 10 9))

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 22 player))
	   (not (is-player-at-position? state 22 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 19 22))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 18 player) (is-player-at-position? state 23 player) (not (is-player-at-position? state 22 player))
	   (not (is-player-at-position? state 22 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 23 22))


     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 21 player) (is-player-at-position? state 6 player) (not (is-player-at-position? state 11 player))
	   (not (is-player-at-position? state 11 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 6 11))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 21 player) (is-player-at-position? state 10 player) (not (is-player-at-position? state 11 player))
	   (not (is-player-at-position? state 11 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 10 11))

     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 21 player) (is-player-at-position? state 17 player) (not (is-player-at-position? state 16 player))
	   (not (is-player-at-position? state 16 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 17 16))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 21 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 16 player))
	   (not (is-player-at-position? state 16 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 19 16))


     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player) (is-player-at-position? state 9 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 9 10))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player) (is-player-at-position? state 11 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 11 10))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player) (is-player-at-position? state 3 player) (not (is-player-at-position? state 10 player))
	   (not (is-player-at-position? state 10 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 3 10))

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player) (is-player-at-position? state 16 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 16 19))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player) (is-player-at-position? state 22 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 22 19))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player) (is-player-at-position? state 20 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 20 19))

     ;; 20

     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 20 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 22 player))
	   (not (is-player-at-position? state 22 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 19 22))
     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 20 player) (is-player-at-position? state 21 player) (not (is-player-at-position? state 22 player))
	   (not (is-player-at-position? state 22 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 21 22))

     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 20 player) (is-player-at-position? state 13 player) (not (is-player-at-position? state 14 player))
	   (not (is-player-at-position? state 14 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 13 14))
     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 20 player) (is-player-at-position? state 2 player) (not (is-player-at-position? state 14 player))
	   (not (is-player-at-position? state 14 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 2 14))


     ((and (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) (is-player-at-position? state 15 player) (not (is-player-at-position? state 16 player))
	   (not (is-player-at-position? state 16 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 15 16))
     ((and (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) (is-player-at-position? state 19 player) (not (is-player-at-position? state 16 player))
	   (not (is-player-at-position? state 16 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 19 16))

     ((and (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) (is-player-at-position? state 14 player) (not (is-player-at-position? state 12 player))
	   (not (is-player-at-position? state 12 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 14 12))
     ((and (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) (is-player-at-position? state 8 player) (not (is-player-at-position? state 12 player))
	   (not (is-player-at-position? state 12 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 8 12))


     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player) (is-player-at-position? state 12 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 12 13))
     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player) (is-player-at-position? state 14 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 14 13))
     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player) (is-player-at-position? state 5 player) (not (is-player-at-position? state 13 player))
	   (not (is-player-at-position? state 13 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 5 13))

     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player) (is-player-at-position? state 16 player) (not (is-player-at-position? state 19 player)) 
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 16 19))
     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player) (is-player-at-position? state 18 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 18 19))
     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player) (is-player-at-position? state 22 player) (not (is-player-at-position? state 19 player))
	   (not (is-player-at-position? state 19 (get-opposite-player player)))
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 22 19))



;;;;;;;;;Move a piece out of a mill. This is the last set before going to random movement. 

     ;; 1

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 1 player) (is-player-at-position? state 2 player)
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 2 5))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 1 player) (is-player-at-position? state 2 player)
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 2 14))



     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 2 player) (is-player-at-position? state 0 player)
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 0 3)) 
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 2 player) (is-player-at-position? state 0 player)
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 0 9)) 



     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 2 player) (is-player-at-position? state 1 player)
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 1 4))

     ;; 2

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 5 8))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player) (is-player-at-position? state 5 player)
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 5 13))


     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player) (is-player-at-position? state 3 player)
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 3 6))
     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player) (is-player-at-position? state 3 player)
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 3 10))


     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 5 player) (is-player-at-position? state 4 player)
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 4 1))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 5 player) (is-player-at-position? state 4 player)
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 4 7))


     ;; 3

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 7 player) (is-player-at-position? state 8 player)
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 8 5))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 7 player) (is-player-at-position? state 8 player)
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 8 12))


     ((and (is-player-at-position? state 7 player) (is-player-at-position? state 8 player) (is-player-at-position? state 6 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 6 3))
     ((and (is-player-at-position? state 7 player) (is-player-at-position? state 8 player) (is-player-at-position? state 6 player) 
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 3 11))


     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 8 player) (is-player-at-position? state 7 player) 
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 7 4))

     ;; 4

     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 10 player) (is-player-at-position? state 11 player)
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 11 6))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 10 player) (is-player-at-position? state 11 player)
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 11 15))


     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 11 player) (is-player-at-position? state 9 player)
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 9 0))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 11 player) (is-player-at-position? state 9 player)
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 9 21))


     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player) (is-player-at-position? state 10 player) 
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 10 3))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player) (is-player-at-position? state 10 player) 
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 10 18))

     ;; 5 

     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 13 player) (is-player-at-position? state 14 player)
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 14 2))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 13 player) (is-player-at-position? state 14 player)
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 14 23))


     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 14 player) (is-player-at-position? state 12 player) 
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 12 8))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 14 player) (is-player-at-position? state 12 player) 
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 12 17))


     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player) (is-player-at-position? state 13 player)
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 13 5))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player) (is-player-at-position? state 13 player)
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 13 20))

     ;; 6

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 16 player) (is-player-at-position? state 17 player)
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 17 12))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 16 player) (is-player-at-position? state 17 player)
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 17 20))


     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 17 player) (is-player-at-position? state 15 player)
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 15 11))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 17 player) (is-player-at-position? state 15 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 15 18))


     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 17 player) (is-player-at-position? state 16 player)
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 16 19))

     ;; 7

     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (is-player-at-position? state 20 player)
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 20 17))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player) (is-player-at-position? state 20 player)
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 20 23))


     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 18 player) 
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 18 15))
     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player) (is-player-at-position? state 18 player) 
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 18 21))


     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 20 player) (is-player-at-position? state 19 player)
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 19 16))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 20 player) (is-player-at-position? state 19 player)
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 19 22))

     ;; 8 

     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 22 player) (is-player-at-position? state 23 player)
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 23 14)) 
     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 22 player) (is-player-at-position? state 23 player)
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 23 20))


     ((and (is-player-at-position? state 22 player) (is-player-at-position? state 23 player) (is-player-at-position? state 21 player) 
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 21 9))
     ((and (is-player-at-position? state 22 player) (is-player-at-position? state 23 player) (is-player-at-position? state 21 player) 
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 21 18))


     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 23 player) (is-player-at-position? state 22 player)
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 22 19))

     ;; 9 

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 9 player) (is-player-at-position? state 21 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 21 18))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 9 player) (is-player-at-position? state 21 player)
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 21 22))


     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 21 player) (is-player-at-position? state 0 player)
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 0 1))
     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 21 player) (is-player-at-position? state 0 player)
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 0 3))


     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 21 player) (is-player-at-position? state 9 player)
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 10 9))

     ;; 10

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 18 player)
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 18 15))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 18 player)
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 18 19))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player) (is-player-at-position? state 18 player)
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 18 21))


     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 3 player) 
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 3 4))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 3 player) 
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 3 6))
     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player) (is-player-at-position? state 3 player) 
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 3 0))


     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 18 player) (is-player-at-position? state 10 player)
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 10 9))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 18 player) (is-player-at-position? state 10 player)
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 10 11))

     ;; 11

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 11 player) (is-player-at-position? state 15 player)
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 15 16))
     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 11 player) (is-player-at-position? state 15 player)
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 15 18))


     ((and (is-player-at-position? state 11 player) (is-player-at-position? state 15 player) (is-player-at-position? state 6 player)
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 6 3)) 
     ((and (is-player-at-position? state 11 player) (is-player-at-position? state 15 player) (is-player-at-position? state 6 player)
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 6 7)) 


     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 15 player) (is-player-at-position? state 11 player)
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 11 10))

     ;; 12

     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 4 player) (is-player-at-position? state 7 player)
	   (and (not (is-player-at-position? state 6 (get-opposite-player player))) (not (is-player-at-position? state 6 player)))) (cons 7 6))
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 4 player) (is-player-at-position? state 7 player)
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 7 8))


     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 7 player) (is-player-at-position? state 1 player)
	   (and (not (is-player-at-position? state 0 (get-opposite-player player))) (not (is-player-at-position? state 0 player)))) (cons 1 0))
     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 7 player) (is-player-at-position? state 1 player)
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 1 2))


     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player) (is-player-at-position? state 4 player)
	   (and (not (is-player-at-position? state 3 (get-opposite-player player))) (not (is-player-at-position? state 3 player)))) (cons 4 3))
     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player) (is-player-at-position? state 4 player)
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 4 5))

     ;; 13

     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 19 player) (is-player-at-position? state 22 player)
	   (and (not (is-player-at-position? state 21 (get-opposite-player player))) (not (is-player-at-position? state 21 player)))) (cons 22 21))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 19 player) (is-player-at-position? state 22 player)
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 22 23))


     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 22 player) (is-player-at-position? state 16 player)
	   (and (not (is-player-at-position? state 15 (get-opposite-player player))) (not (is-player-at-position? state 15 player)))) (cons 16 15))
     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 22 player) (is-player-at-position? state 16 player)
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 16 17))


     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 22 player) (is-player-at-position? state 19 player) 
	   (and (not (is-player-at-position? state 18 (get-opposite-player player))) (not (is-player-at-position? state 18 player)))) (cons 19 18))
     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 22 player) (is-player-at-position? state 19 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 19 20))

     ;; 14

     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 12 player) (is-player-at-position? state 17 player)
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 17 16))
     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 12 player) (is-player-at-position? state 17 player)
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 17 20))


     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 17 player) (is-player-at-position? state 8 player)
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 8 5))
     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 17 player) (is-player-at-position? state 8 player)
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 8 7))


     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 17 player) (is-player-at-position? state 12 player)
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 12 13)) 

     ;; 15 

     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) 
	   (and (not (is-player-at-position? state 17 (get-opposite-player player))) (not (is-player-at-position? state 17 player)))) (cons 20 17)) 
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) 
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 20 19)) 
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) 
	   (and (not (is-player-at-position? state 23 (get-opposite-player player))) (not (is-player-at-position? state 23 player)))) (cons 20 23)) 


     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 5 player) 
	   (and (not (is-player-at-position? state 2 (get-opposite-player player))) (not (is-player-at-position? state 2 player)))) (cons 5 2))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 5 player) 
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 5 4))
     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player) (is-player-at-position? state 5 player) 
	   (and (not (is-player-at-position? state 8 (get-opposite-player player))) (not (is-player-at-position? state 8 player)))) (cons 5 8))


     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 20 player) (is-player-at-position? state 13 player) 
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 13 12))
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 20 player) (is-player-at-position? state 13 player) 
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 13 14))

     ;; 16

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) 
	   (and (not (is-player-at-position? state 20 (get-opposite-player player))) (not (is-player-at-position? state 20 player)))) (cons 23 20))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) 
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 23 22))


     ((and (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) (is-player-at-position? state 2 player) 
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 2 1))
     ((and (is-player-at-position? state 14 player) (is-player-at-position? state 23 player) (is-player-at-position? state 2 player) 
	   (and (not (is-player-at-position? state 5 (get-opposite-player player))) (not (is-player-at-position? state 5 player)))) (cons 2 5))


     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 23 player) (is-player-at-position? state 14 player) 
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 14 13))

     ;; 17 

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 3 player) (is-player-at-position? state 6 player) 
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 6 7))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 3 player) (is-player-at-position? state 6 player) 
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 6 11))


     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 6 player) (is-player-at-position? state 0 player) 
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 0 1))
     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 6 player) (is-player-at-position? state 0 player) 
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 0 9))


     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player) (is-player-at-position? state 3 player) 
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 3 4))
     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player) (is-player-at-position? state 3 player) 
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 3 10))

     ;; 18 

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 5 player) (is-player-at-position? state 8 player) 
	   (and (not (is-player-at-position? state 7 (get-opposite-player player))) (not (is-player-at-position? state 7 player)))) (cons 9 7)) 
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 5 player) (is-player-at-position? state 8 player) 
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 8 12)) 


     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 8 player) (is-player-at-position? state 2 player) 
	   (and (not (is-player-at-position? state 1 (get-opposite-player player))) (not (is-player-at-position? state 1 player)))) (cons 2 1))
     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 8 player) (is-player-at-position? state 2 player) 
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 2 14))


     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player) (is-player-at-position? state 5 player) 
	   (and (not (is-player-at-position? state 4 (get-opposite-player player))) (not (is-player-at-position? state 4 player)))) (cons 5 4))
     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player) (is-player-at-position? state 5 player) 
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 5 13))

     ;; 19

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 18 player) (is-player-at-position? state 21 player) 
	   (and (not (is-player-at-position? state 9 (get-opposite-player player))) (not (is-player-at-position? state 9 player)))) (cons 21 9))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 18 player) (is-player-at-position? state 21 player) 
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 21 22))


     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 21 player) (is-player-at-position? state 15 player) 
	   (and (not (is-player-at-position? state 11 (get-opposite-player player))) (not (is-player-at-position? state 11 player)))) (cons 15 11))
     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 21 player) (is-player-at-position? state 15 player) 
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 15 16))


     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player) (is-player-at-position? state 18 player)
	   (and (not (is-player-at-position? state 10 (get-opposite-player player))) (not (is-player-at-position? state 10 player)))) (cons 18 10))
     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player) (is-player-at-position? state 18 player)
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 18 19))

     ;; 20

     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) 
	   (and (not (is-player-at-position? state 14 (get-opposite-player player))) (not (is-player-at-position? state 14 player)))) (cons 23 14))
     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) 
	   (and (not (is-player-at-position? state 22 (get-opposite-player player))) (not (is-player-at-position? state 22 player)))) (cons 23 22))


     ((and (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) (is-player-at-position? state 17 player) 
	   (and (not (is-player-at-position? state 12 (get-opposite-player player))) (not (is-player-at-position? state 12 player)))) (cons 17 12))
     ((and (is-player-at-position? state 20 player) (is-player-at-position? state 23 player) (is-player-at-position? state 17 player) 
	   (and (not (is-player-at-position? state 16 (get-opposite-player player))) (not (is-player-at-position? state 16 player)))) (cons 17 16))


     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player) (is-player-at-position? state 20 player) 
	   (and (not (is-player-at-position? state 13 (get-opposite-player player))) (not (is-player-at-position? state 13 player)))) (cons 20 13))
     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player) (is-player-at-position? state 20 player) 
	   (and (not (is-player-at-position? state 19 (get-opposite-player player))) (not (is-player-at-position? state 19 player)))) (cons 20 19))


     (else (random-element possible-moves)))
    )
  
   ;This function is called when we can remove an opponents piece.
   ;Remember that we can only remove pieces that are part of a mill when there is no other piece available to remove.
   ;Returns the position of the piece we want to remove.	
  (define (remove state player)
    (define opponent-places (get-positions-with-player state (get-opposite-player player)))
    (define opponents-not-in-mill (filter (lambda (x) (not (is-position-in-mill state x))) opponent-places))
    


     ;; The Following sets of 20 provide the inteligence to remove a piece that is in the middle of a row if it is adjacent to another piece.  
     ;; 1
    (cond 
     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 1 (get-opposite-player player)) (not (is-position-in-mill state 1))) 1)

     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 2 (get-opposite-player player)) (not (is-position-in-mill state 1))) 1)

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 2 (get-opposite-player player)) (not (is-position-in-mill state 0))) 0)

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 2 (get-opposite-player player)) (not (is-position-in-mill state 2))) 2)

     ;; 2

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 4 (get-opposite-player player)) (not (is-position-in-mill state 4))) 4)

     ((and (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (not (is-position-in-mill state 4))) 4)

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (not (is-position-in-mill state 3))) 3)

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (not (is-position-in-mill state 5))) 5)


     ;; 3 

     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (not (is-position-in-mill state 7))) 7)

     ((and (is-player-at-position? state 7 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (not (is-position-in-mill state 7))) 7)

     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (not (is-position-in-mill state 6))) 6)

     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (not (is-position-in-mill state 8))) 8)


     ;; 4

     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 10 (get-opposite-player player)) (not (is-position-in-mill state 10))) 10)

     ((and (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (not (is-position-in-mill state 10))) 10)

     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (not (is-position-in-mill state 9))) 9)

     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (not (is-position-in-mill state 11))) 11)


     ;; 5

     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 13 (get-opposite-player player)) (not (is-position-in-mill state 13))) 13)

     ((and (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (not (is-position-in-mill state 13))) 13)

     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (not (is-position-in-mill state 12))) 12)

     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (not (is-position-in-mill state 14))) 14)


     ;; 6

     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 16 (get-opposite-player player)) (not (is-position-in-mill state 16))) 16)

     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (not (is-position-in-mill state 16))) 16)

     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (not (is-position-in-mill state 15))) 15)

     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (not (is-position-in-mill state 17))) 17)


     ;; 7

     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 19 (get-opposite-player player)) (not (is-position-in-mill state 19))) 19)

     ((and (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-position-in-mill state 19))) 19)

     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-position-in-mill state 18))) 18)

     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-position-in-mill state 20))) 20)


     ;; 8

     ((and (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (not (is-position-in-mill state 22))) 22)

     ((and (is-player-at-position? state 22 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 22))) 22)

     ((and (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 21))) 21)

     ((and (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 23))) 23)


     ;; 9

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 9 (get-opposite-player player)) (not (is-position-in-mill state 9))) 9)

     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (not (is-position-in-mill state 9))) 9)

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (not (is-position-in-mill state 0))) 0)

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (not (is-position-in-mill state 21))) 21)


     ;; 10

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 10 (get-opposite-player player)) (not (is-position-in-mill state 10))) 10)

     ((and (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (not (is-position-in-mill state 10))) 10)

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (not (is-position-in-mill state 3))) 3)

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (not (is-position-in-mill state 18))) 18)


     ;; 11

     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (not (is-position-in-mill state 11))) 11)

     ((and (is-player-at-position? state 11 (get-opposite-player player)) (is-player-at-position? state 15 (get-opposite-player player)) (not (is-position-in-mill state 11))) 11)

     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 15 (get-opposite-player player)) (not (is-position-in-mill state 6))) 6)

     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 15 (get-opposite-player player)) (not (is-position-in-mill state 15))) 15)


     ;; 12

     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 4 (get-opposite-player player)) (not (is-position-in-mill state 4))) 4)

     ((and (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (not (is-position-in-mill state 4))) 4)

     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (not (is-position-in-mill state 1))) 1)

     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (not (is-position-in-mill state 7))) 7)


     ;; 13

     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 19 (get-opposite-player player)) (not (is-position-in-mill state 19))) 19)

     ((and (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (not (is-position-in-mill state 19))) 19)

     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (not (is-position-in-mill state 16))) 16)

     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (not (is-position-in-mill state 22))) 22)


     ;; 14

     ((and (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 12 (get-opposite-player player)) (not (is-position-in-mill state 12))) 12)

     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (not (is-position-in-mill state 12))) 12)

     ((and (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (not (is-position-in-mill state 8))) 8)

     ((and (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (not (is-position-in-mill state 17))) 17)


     ;; 15

     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 13 (get-opposite-player player)) (not (is-position-in-mill state 13))) 13)

     ((and (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-position-in-mill state 13))) 13)

     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-position-in-mill state 5))) 5)

     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-position-in-mill state 20))) 20)


     ;; 16

     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (not (is-position-in-mill state 14))) 14)

     ((and (is-player-at-position? state 14 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 14))) 14)

     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 2))) 2)

     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 23))) 23)


     ;; 17

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 3 (get-opposite-player player)) (not (is-position-in-mill state 3))) 3)

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 6 (get-opposite-player player)) (not (is-position-in-mill state 3))) 3)

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 6 (get-opposite-player player)) (not (is-position-in-mill state 0))) 0)

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 6 (get-opposite-player player)) (not (is-position-in-mill state 6))) 6)


     ;; 18

     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (not (is-position-in-mill state 5))) 5)

     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (not (is-position-in-mill state 5))) 5)

     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (not (is-position-in-mill state 2))) 2)

     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (not (is-position-in-mill state 8))) 8)


     ;; 19

     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (not (is-position-in-mill state 18))) 18)

     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (not (is-position-in-mill state 18))) 18)

     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (not (is-position-in-mill state 15))) 15)

     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (not (is-position-in-mill state 21))) 21)


     ;; 20

     ((and (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-position-in-mill state 20))) 20)

     ((and (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 20))) 20)

     ((and (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 17))) 17)

     ((and (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 23))) 23)




     ;;; The Following 20 sets provides the inteligence to remove an outer adjacent piece if the middle one could not be removed using the above. 

     ;; 1

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 1 (get-opposite-player player)) (not (is-position-in-mill state 0))) 0)

     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 2 (get-opposite-player player)) (not (is-position-in-mill state 2))) 2)

     ;; 2

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 4 (get-opposite-player player)) (not (is-position-in-mill state 3))) 3)

     ((and (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (not (is-position-in-mill state 5))) 5)

     ;; 3 

     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (not (is-position-in-mill state 6))) 6)

     ((and (is-player-at-position? state 7 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (not (is-position-in-mill state 8))) 8)

     ;; 4

     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 10 (get-opposite-player player)) (not (is-position-in-mill state 9))) 9)

     ((and (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (not (is-position-in-mill state 11))) 11)

     ;; 5

     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 13 (get-opposite-player player)) (not (is-position-in-mill state 12))) 12)

     ((and (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (not (is-position-in-mill state 14))) 14)

     ;; 6

     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 16 (get-opposite-player player)) (not (is-position-in-mill state 15))) 15)

     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (not (is-position-in-mill state 17))) 17)

     ;; 7

     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 19 (get-opposite-player player)) (not (is-position-in-mill state 18))) 18)

     ((and (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-position-in-mill state 20))) 20)

     ;; 8

     ((and (is-player-at-position? state 21 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (not (is-position-in-mill state 21))) 21)

     ((and (is-player-at-position? state 22 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 23))) 23)

     ;; 9

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 9 (get-opposite-player player)) (not (is-position-in-mill state 0))) 0)

     ((and (is-player-at-position? state 9 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (not (is-position-in-mill state 21))) 21)

     ;; 10

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 10 (get-opposite-player player)) (not (is-position-in-mill state 3))) 3)

     ((and (is-player-at-position? state 10 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (not (is-position-in-mill state 18))) 18)

     ;; 11

     ((and (is-player-at-position? state 6 (get-opposite-player player)) (is-player-at-position? state 11 (get-opposite-player player)) (not (is-position-in-mill state 6))) 6)

     ((and (is-player-at-position? state 11 (get-opposite-player player)) (is-player-at-position? state 15 (get-opposite-player player)) (not (is-position-in-mill state 15))) 15)

     ;; 12

     ((and (is-player-at-position? state 1 (get-opposite-player player)) (is-player-at-position? state 4 (get-opposite-player player)) (not (is-position-in-mill state 1))) 1)

     ((and (is-player-at-position? state 4 (get-opposite-player player)) (is-player-at-position? state 7 (get-opposite-player player)) (not (is-position-in-mill state 7))) 7)

     ;; 13

     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 19 (get-opposite-player player)) (not (is-position-in-mill state 16))) 16)

     ((and (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player)) (not (is-position-in-mill state 22))) 22)

     ;; 14

     ((and (is-player-at-position? state 8 (get-opposite-player player)) (is-player-at-position? state 12 (get-opposite-player player)) (not (is-position-in-mill state 8))) 8)

     ((and (is-player-at-position? state 12 (get-opposite-player player)) (is-player-at-position? state 17 (get-opposite-player player)) (not (is-position-in-mill state 17))) 17)

     ;; 15

     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 13 (get-opposite-player player)) (not (is-position-in-mill state 5))) 5)

     ((and (is-player-at-position? state 13 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-position-in-mill state 20))) 20)

     ;; 16

     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 14 (get-opposite-player player)) (not (is-position-in-mill state 2))) 2)

     ((and (is-player-at-position? state 14 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 23))) 23)

     ;; 17

     ((and (is-player-at-position? state 0 (get-opposite-player player)) (is-player-at-position? state 3 (get-opposite-player player)) (not (is-position-in-mill state 0))) 0)

     ((and (is-player-at-position? state 3 (get-opposite-player player)) (is-player-at-position? state 6 (get-opposite-player player)) (not (is-position-in-mill state 6))) 6)

     ;; 18

     ((and (is-player-at-position? state 2 (get-opposite-player player)) (is-player-at-position? state 5 (get-opposite-player player)) (not (is-position-in-mill state 2))) 2)

     ((and (is-player-at-position? state 5 (get-opposite-player player)) (is-player-at-position? state 8 (get-opposite-player player)) (not (is-position-in-mill state 8))) 8) 

     ;; 19

     ((and (is-player-at-position? state 15 (get-opposite-player player)) (is-player-at-position? state 18 (get-opposite-player player)) (not (is-position-in-mill state 15))) 15)

     ((and (is-player-at-position? state 18 (get-opposite-player player)) (is-player-at-position? state 21 (get-opposite-player player)) (not (is-position-in-mill state 21))) 21)

     ;; 20

     ((and (is-player-at-position? state 17 (get-opposite-player player)) (is-player-at-position? state 20 (get-opposite-player player)) (not (is-position-in-mill state 17))) 17)

     ((and (is-player-at-position? state 20 (get-opposite-player player)) (is-player-at-position? state 23 (get-opposite-player player)) (not (is-position-in-mill state 23))) 23)


;; The Following 20 sets will remove a piece adjacent to two of my own pieces. 


     ;; 1

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 1 player)
	   (and (is-player-at-position? state 2 (get-opposite-player player))) (not (is-position-in-mill state 2))) 2)

     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 2 player)
	   (and (is-player-at-position? state 0 (get-opposite-player player))) (not (is-position-in-mill state 0))) 0)

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 2 player)
	   (and (is-player-at-position? state 1 (get-opposite-player player))) (not (is-position-in-mill state 1))) 1)

     ;; 2

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 4 player)
	   (and (is-player-at-position? state 5 (get-opposite-player player))) (not (is-position-in-mill state 5))) 5)

     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 5 player)
	   (and (is-player-at-position? state 3 (get-opposite-player player))) (not (is-position-in-mill state 3))) 3)

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 5 player)
	   (and (is-player-at-position? state 4 (get-opposite-player player))) (not (is-position-in-mill state 4))) 4)

     ;; 3

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 7 player)
	   (and (is-player-at-position? state 8 (get-opposite-player player))) (not (is-position-in-mill state 8))) 8)

     ((and (is-player-at-position? state 7 player) (is-player-at-position? state 8 player)
	   (and (is-player-at-position? state 6 (get-opposite-player player))) (not (is-position-in-mill state 6))) 6)

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 8 player)
	   (and (is-player-at-position? state 7 (get-opposite-player player))) (not (is-position-in-mill state 7))) 7)

     ;; 4

     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 10 player)
	   (and (is-player-at-position? state 11 (get-opposite-player player))) (not (is-position-in-mill state 11))) 11)

     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 11 player)
	   (and (is-player-at-position? state 9 (get-opposite-player player))) (not (is-position-in-mill state 9))) 9)

     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 11 player)
	   (and (is-player-at-position? state 10 (get-opposite-player player))) (not (is-position-in-mill state 10))) 10)

     ;; 5 

     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 13 player)
	   (and (is-player-at-position? state 14 (get-opposite-player player))) (not (is-position-in-mill state 14))) 14)

     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 14 player)
	   (and (is-player-at-position? state 12 (get-opposite-player player))) (not (is-position-in-mill state 12))) 12)

     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 14 player)
	   (and (is-player-at-position? state 13 (get-opposite-player player))) (not (is-position-in-mill state 13))) 13)

     ;; 6

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 16 player)
	   (and (is-player-at-position? state 17 (get-opposite-player player))) (not (is-position-in-mill state 17))) 17)

     ((and (is-player-at-position? state 16 player) (is-player-at-position? state 17 player)
	   (and (is-player-at-position? state 15 (get-opposite-player player))) (not (is-position-in-mill state 15))) 15)

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 17 player)
	   (and (is-player-at-position? state 16 (get-opposite-player player))) (not (is-position-in-mill state 16))) 16)

     ;; 7

     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 19 player)
	   (and (is-player-at-position? state 20 (get-opposite-player player))) (not (is-position-in-mill state 20))) 20)

     ((and (is-player-at-position? state 19 player) (is-player-at-position? state 20 player)
	   (and (is-player-at-position? state 18 (get-opposite-player player))) (not (is-position-in-mill state 18))) 18)

     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 20 player)
	   (and (is-player-at-position? state 19 (get-opposite-player player))) (not (is-position-in-mill state 19))) 19)

     ;; 8 

     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 22 player)
	   (and (is-player-at-position? state 23 (get-opposite-player player))) (not (is-position-in-mill state 23))) 23)

     ((and (is-player-at-position? state 22 player) (is-player-at-position? state 23 player)
	   (and (is-player-at-position? state 21 (get-opposite-player player))) (not (is-position-in-mill state 21))) 21)

     ((and (is-player-at-position? state 21 player) (is-player-at-position? state 23 player)
	   (and (is-player-at-position? state 22 (get-opposite-player player))) (not (is-position-in-mill state 22))) 22)

     ;; 9 

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 9 player)
	   (and (is-player-at-position? state 21 (get-opposite-player player))) (not (is-position-in-mill state 21))) 21)

     ((and (is-player-at-position? state 9 player) (is-player-at-position? state 21 player)
	   (and (is-player-at-position? state 0 (get-opposite-player player))) (not (is-position-in-mill state 0))) 0)

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 21 player)
	   (and (is-player-at-position? state 9 (get-opposite-player player))) (not (is-position-in-mill state 9))) 9)

     ;; 10

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 10 player)
	   (and (is-player-at-position? state 18 (get-opposite-player player))) (not (is-position-in-mill state 18))) 18)

     ((and (is-player-at-position? state 10 player) (is-player-at-position? state 18 player)
	   (and (is-player-at-position? state 3 (get-opposite-player player))) (not (is-position-in-mill state 3))) 3)

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 18 player)
	   (and (is-player-at-position? state 10 (get-opposite-player player))) (not (is-position-in-mill state 10))) 10)

     ;; 11

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 11 player)
	   (and (is-player-at-position? state 15 (get-opposite-player player))) (not (is-position-in-mill state 15))) 15)

     ((and (is-player-at-position? state 11 player) (is-player-at-position? state 15 player)
	   (and (is-player-at-position? state 6 (get-opposite-player player))) (not (is-position-in-mill state 6))) 6)

     ((and (is-player-at-position? state 6 player) (is-player-at-position? state 15 player)
	   (and (is-player-at-position? state 11 (get-opposite-player player))) (not (is-position-in-mill state 11))) 11)

     ;; 12

     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 4 player)
	   (and (is-player-at-position? state 7 (get-opposite-player player))) (not (is-position-in-mill state 7))) 7)

     ((and (is-player-at-position? state 4 player) (is-player-at-position? state 7 player)
	   (and (is-player-at-position? state 1 (get-opposite-player player))) (not (is-position-in-mill state 1))) 1)

     ((and (is-player-at-position? state 1 player) (is-player-at-position? state 7 player)
	   (and (is-player-at-position? state 4 (get-opposite-player player))) (not (is-position-in-mill state 4))) 4)

     ;; 13

     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 19 (get-opposite-player player))
	   (and (is-player-at-position? state 22 (get-opposite-player player))) (not (is-position-in-mill state 22))) 22)

     ((and (is-player-at-position? state 19 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player))
	   (and (is-player-at-position? state 16 (get-opposite-player player))) (not (is-position-in-mill state 16))) 16)

     ((and (is-player-at-position? state 16 (get-opposite-player player)) (is-player-at-position? state 22 (get-opposite-player player))
	   (and (is-player-at-position? state 19 (get-opposite-player player))) (not (is-position-in-mill state 19))) 19)

     ;; 14

     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 12 player)
	   (and (is-player-at-position? state 17 (get-opposite-player player))) (not (is-position-in-mill state 17))) 17)

     ((and (is-player-at-position? state 12 player) (is-player-at-position? state 17 player)
	   (and (is-player-at-position? state 8 (get-opposite-player player))) (not (is-position-in-mill state 8))) 8)

     ((and (is-player-at-position? state 8 player) (is-player-at-position? state 17 player)
	   (and (is-player-at-position? state 12 (get-opposite-player player))) (not (is-position-in-mill state 12))) 12)

     ;; 15 

     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 13 player)
	   (and (is-player-at-position? state 20 (get-opposite-player player))) (not (is-position-in-mill state 20))) 20)

     ((and (is-player-at-position? state 13 player) (is-player-at-position? state 20 player)
	   (and (is-player-at-position? state 5 (get-opposite-player player))) (not (is-position-in-mill state 5))) 5)

     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 20 player)
	   (and (is-player-at-position? state 13 (get-opposite-player player))) (not (is-position-in-mill state 13))) 13)

     ;; 16

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 14 player)
	   (and (is-player-at-position? state 23 (get-opposite-player player))) (not (is-position-in-mill state 23))) 23)

     ((and (is-player-at-position? state 14 player) (is-player-at-position? state 23 player)
	   (and (is-player-at-position? state 2 (get-opposite-player player))) (not (is-position-in-mill state 2))) 2)

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 23 player)
	   (and (is-player-at-position? state 14 (get-opposite-player player))) (not (is-position-in-mill state 14))) 14)

     ;; 17 

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 3 player)
	   (and (is-player-at-position? state 6 (get-opposite-player player))) (not (is-position-in-mill state 6))) 6)

     ((and (is-player-at-position? state 3 player) (is-player-at-position? state 6 player)
	   (and (is-player-at-position? state 0 (get-opposite-player player))) (not (is-position-in-mill state 0))) 0)

     ((and (is-player-at-position? state 0 player) (is-player-at-position? state 6 player)
	   (and (is-player-at-position? state 3 (get-opposite-player player))) (not (is-position-in-mill state 3))) 3)

     ;; 18 

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 5 player)
	   (and (is-player-at-position? state 8 (get-opposite-player player))) (not (is-position-in-mill state 8))) 8)

     ((and (is-player-at-position? state 5 player) (is-player-at-position? state 8 player)
	   (and (is-player-at-position? state 2 (get-opposite-player player))) (not (is-position-in-mill state 2))) 2)

     ((and (is-player-at-position? state 2 player) (is-player-at-position? state 8 player)
	   (and (is-player-at-position? state 5 (get-opposite-player player))) (not (is-position-in-mill state 5))) 5)

     ;; 19

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 18 player)
	   (and (is-player-at-position? state 21 (get-opposite-player player))) (not (is-position-in-mill state 21))) 21)

     ((and (is-player-at-position? state 18 player) (is-player-at-position? state 21 player)
	   (and (is-player-at-position? state 15 (get-opposite-player player))) (not (is-position-in-mill state 15))) 15)

     ((and (is-player-at-position? state 15 player) (is-player-at-position? state 21 player)
	    (and (is-player-at-position? state 18 (get-opposite-player player))) (not (is-position-in-mill state 18))) 18)

     ;; 20

     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 20 player)
	   (and (is-player-at-position? state 23 (get-opposite-player player))) (not (is-position-in-mill state 23))) 23)

     ((and (is-player-at-position? state 20 player) (is-player-at-position? state 23 player)
	   (and (is-player-at-position? state 17 (get-opposite-player player))) (not (is-position-in-mill state 17))) 17)

     ((and (is-player-at-position? state 17 player) (is-player-at-position? state 23 player)
	   (and (is-player-at-position? state 20 (get-opposite-player player))) (not (is-position-in-mill state 20))) 20)



     ((not (null? opponents-not-in-mill)) (random-element opponents-not-in-mill))
	  ((null? opponents-not-in-mill) (random-element opponent-places)))

      )

    ;The procedure 11MensMorrisAI returns a list of your 3 procedures in the order place, move, and remove
    ;This must be the last line of your AI.
  (list place move remove)
  )
