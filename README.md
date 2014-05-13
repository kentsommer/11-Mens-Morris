11-Mens-Morris
==============

Running the Game (Referee):
  The game can be set up for 2 human players, 2 computer players, or 1 of each 
    with the computer being either the first or second player. The first player 
    procedure loaded becomes Player 1. After loading "11MensMorris.scm" into 
    Scheme, you can start the game with any combination of human and computer 
    players using (play-game ...). Some examples follow:
    
      (play-game 'human 'human) will start 11MensMorris with two interactive 
        players.

      (play-game "random.scm" 'human) will start 11MensMorris with Player 1 as 
        the computer random player found in file "random.scm" and an 
        interactive, human player for Player 2.

      (play-game "somme282.scm" "random.scm") will start 11MensMorris with
        Player 1 as the player-procedure found in a file named
        "somme282.scm" and Player 2 as the random player procedure.
        
        
