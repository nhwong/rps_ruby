#
# Rock, Paper, Scissors

If you want a **hard** challenge, create a Rock-Paper-Scissors game. You are going to need to do a lot of comparisons using `if` and `elsif` statements, so be sure to get through Chapter 7 of Pine first.

Version 1 of the game should work as follows:

 - You should prompt the user: "Your move: rock, paper, or scissors?"
 - The user types in their move.
 - The computer chooses randomly from among the three possible moves.
 - Print out the move that the computer played.
 - Check if the human and the computer both played the same move -- if so, - print out "It's a tie!"
 - Check all of the other possible outcomes and print out "You win!" or "You lose!" as appropriate:
  - Human rock / Computer paper
  - Human rock / Computer scissors
  - Human paper / Computer rock
  - Human paper / Computer scissors
  - Human scissors / Computer rock
  - Human scissors / Computer paper

In Version 2, make the following enhancements:

 - The player should be able to type "ROCK", PaPeR", "Scissors", "SCISSORS", and they should all work as expected.
 - If the player types anything other than a valid move (case insensitive), then display the message "That doesn't seem to be a valid move."

In Version 3, make the following enhancements:

 - The game should continue until the player types "quit" (or "QuiT", etc). You will want to pay special attention to Pine Chapter 7 Section 3.
 - Keep a running tally of how many times the player has won vs how many times the computer has won, and display it at the end of each round.

In Version 4, make the following enhancements:

 - Allow for more flexible input.
  - Let "r", "R", "2" all work to play "rock."
  - Let "p", "P", "1" all work to play "paper."
  - Let "s", "S, "3" all work to play "scissors."
  - Let "q", "Q", "exit", "ExiT", "e" all work to "quit."

There's no one correct way to write this game; there are infinite ways, in fact. So just make it work in whichever way seems the most straightforward to you. There is one possible solution for Version 1 in this repository, but don't peek until you struggle with it for a while.

### More

If you want a **crazy hard** challenge, then actually try to build Blackjack. This is most definitely optional, and it's very a big project.

If you attempt it, I recommend starting as small as possible. At first, always count Aces as 11, don't allow splits or doubles (just hit or stand). Just report win or loss; don't worry about bets.

Then once you get that working, add in the fancier rules; allow Aces to be soft, allow doubles, allow splits, allow for betting.

Good luck!
