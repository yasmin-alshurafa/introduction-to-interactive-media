### Description of Game:

- It is a one player ping pong game. It includes a paddle and a bouncing ball. The ball should bounce off when it hits the paddle. If the ball hits the bottom of the screen, the player loses.

### 15 October 2020:

- I worked on coming up with the idea from a game to create. I watched these videos for inspiration and to get overview on the step. First video: https://youtu.be/vGLXx_OEtc4 and Tanay Singhal youtube videos on (Processing Pong Game).

### 16 October 2020: 

- I worked on creating a bouncing ball that moves randomly around the screen and reflect when it hits any of the screen's edges. To recall on how to create the ball as an object oriented I went back to Professor Dan Shiffman's videos on Youtube on (What is Object-Oriented Programming?)

![](Bouncing.mov)

### 17 October 2020:

- I worked on adding the paddle to the code, however, the paddle didn't move neither right or left, it stayed still. I used the mousePress() at first it didn't work, so I went ahead and tried it with the keyPressed, it still didn't move. 

![](Paddle.mov)

- I tried working on differnt parts of the code and I figured that it has to be something within this part of the code but I wasn't sure what was it since when I changed it the paddle started to move in a weird way, I'm not sure how and why, but it did move down to the corner whithout the use of the keypressing function

![](code1.png)

![](code2.png)

- This is how it moved when I changed this part of the code

![](moving_paddle.mov)

### 18 October 2020:

- After yesterday's work and not figuring out what was wrong, I decided to look at more videos for help. I used this video (https://youtu.be/vGLXx_OEtc4) to fix my problem which was in this part of the code. I didn't know what exaclty was the problem, maybe because the added the keyPressed() function outside the draw.

![](code3.png)

- This is how it turned after I adjusted the paddle's code.

![](moving_paddle1.mov)

- I worked on having the paddle to move left and right. I also added a counter and text of lives and score. I managed to restart the game with the mousepressed() function, however, I'm wasn't able to adjust the dimensions of the ball so when it touches the square it loses a live. When I reached this part with my code, I decided to change the game from a pong to another easier game since I found it hard to code the paddle's. I decided to work on a game where whenever the paddle touches the ball it loses a life, so the player has to move the paddle left and to avoid touching the ball.

- This is how my work looks now

![](score.mov)

- Although the ball still doesn't change the life when the paddle is touched, I worked on expanded dimensions of the paddle and I got what I wanted

![](update.mov)

### 19 October 2020:

- I managed to find a way to check the edges of the canvas when the box hits its edge from the left, it was by using the same method of checking it for the ball. However, the right side of the canvas didn't work. 

![](left.mov)

- I also added a sound file to the game to, its a background sound to make the player feel that he/she/they are in an arcade. I also added a background image to match the theme of the game.

- I decided to remove the score since it didn't make sense and didnt fit in the game. I kept the lives for checking the lose of the player.

- I managed to add a screen at the beginning for the game by following the steps I found on this link (https://forum.processing.org/two/discussion/11615/how-to-make-an-instruction-scene-before-start-game). However, I still didn't find a way for the instructions to come back again after losing. Maybe i'll keep it this way since it'll be the same player playing so maybe no need for the instructions again.

![](start.mov)

- The only thing left is to find away to allow the ball to detect the position box and make the player lose a life.

### 20 October 2020

- Today I worked on fixing the problem of detecting the overlapping of the moving box and ball I had in my game. My problem was trying to avoid or detect the overlapping of my moving box and ball. The first option I did was that I tried to have an if condition where it detects when the box's x and ball's x position meet and box's y and ball's y position meet. However, when I tried it, it turned out to be ridiculous since, it would only when they are exactly equal. So, I tried expanding the x position range and it still didn't work.

- This is what I was trying to do:

![](over.png)

- This is how the game reacted:

![](overlapping.mov)

- To overcome this issue, I asked on Discord for help and I got help from both Professor Shiloh and Professor Sherwood. I also tried googling this issue and I used this link (http://jeffreythompson.org/collision-detection/circle-rect.php) for help which was great.


