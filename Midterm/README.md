# Midterm: Game

## Midterm Journey

## Major Problems:

- The first problem was having the paddle to move left and right. The problem was solved by applying some similar steps that were used for the bouncing ball.

- The second problem was having the paddle to change the lives score of the game whenever it overlapped or touched the ball. I solved this problem asking for help from the professors on Discord and I google the issues for some solutions. I used the same method used in this link : (http://jeffreythompson.org/collision-detection/circle-rect.php).

- The third problem was having the paddle to hit the edges and not overcome the canvas. The problem was solved by using the same method appiled to the ball but I used the increase the dimensions but adding the wisth of the paddle.

- The fourth problem was having the screen of instructions come up after every game. The problem was solved by adding a blank background with the instructions and have the intructions page code a part of the restarting the game's code.

- The fifth problem was having the sound to stop and play again after every game. The problem was solved by adding the stop playing function when the player loses and start the sound again when the game starts again. 

- The sixth problem was that the player loses lives everytime the game starts. The problem was solved by changing the initial position of the paddle.

## Game's Instructions:

The game starts with a an instructions page where the player has to read. When the player is done reading the instructions, the player clicks the mouse and starts the game. When the player loses the game by finishing his lives, the player gets an game over page. To restart the game again the player can click the mouse again, and the player gets the istuctions page again and the game starts over the same way it happened the first time. 

The game is played by using the r keybutton and l keybutton (r and l stand for right and left) to move the paddle left and right across the game's canvas. By using these two keybuttons the player has to avoid the bouncing ball where it moves at different speed levels randomly, by moving the paddle left and right. With this taking place, if the player's paddle overlaps or touches the ball, the player loses lives.

## My Game Processing:

![](players.mov)

## Different Game Stages:
![](Bouncing.mov)
![](Paddle.mov)
![](moving_paddle.mov)
![](moving_paddle1.mov)
![](score.mov)
![](update.mov)
![](left.mov)
![](start.mov)
![](overlapping.mov)
![](paddles1.mov)
![](final11.mov)
![](Record.mov)
![](screen20.mov)

## Inspiration and References:

Background image:

- https://www.shutterstock.com/search/grey+brick+background

Background sound music:

- https://youtu.be/dLFq9-P1eHQ

Game inspiration: 

- https://youtu.be/vGLXx_OEtc4

- https://youtu.be/SsZmuEEHcbU

Code help: 

- https://youtu.be/YcbcfkLzgvs

- https://youtu.be/vGLXx_OEtc4

- https://forum.processing.org/two/discussion/11615/how-to-make-an-instruction-scene-before-start-game

- http://jeffreythompson.org/collision-detection/circle-rect.php
