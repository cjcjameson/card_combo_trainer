#Card Combo Trainer
##A quick utility for bridge players to practice a card combination within a particular suit when declarer

===========
###How to use
===========

Run this program from the console:

		ruby card_combo_trainer.rb

After the welcome screen, you will be prompted to enter cards for the north and south hands.

Currently, it will just display that card combination.

Future development may include: (backlog)
+ Showing possible arrangements of cards
+ Playing out a card combination
+ Specifying certain opponent cards
+ Specifying certain opponent distributions
+ Showing odds and probabilities
+ Training the user by "playing" against them
+ Improved AI to always play proper card combinations
+ Keeping track of user performance over time (leaderboard, stats)
+ Pulling data from an online source of information on bridge (GIB integration?)

Release 1 will not go beyond one suit...not trying to build a full bridge AI here! Keep it simple and show the logic to the player.

####Command Line options
--help or -h: display help file

###Inspiration and Credits

[BBO](http://www.bridgebase.com) has a training program on it called BridgeMaster. It would always set up the opponents' cards as a "gotcha" if you played a suit incorrectly. Even before, there was an analog bridge training machine with sheets you would insert to reveal cards in order.