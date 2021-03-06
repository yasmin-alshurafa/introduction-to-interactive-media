### Description of Project:

- For the final project, communication from Processing to Arduino will take place. In the processing screen I would have 4 pushbuttons and if any of the pushbuttons was pressed the screen changes, a song plays, and the LEDs blink as if they are dancing. Instead of having a dancing fountain I have dancing LEDs. 

- All videos and images can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing)

### 26 November 2020:

- I started looking for inspirations for my final project and Dubai Mall’s fountain was one. I wanted to have something similar where things dance as an output. So, I decided to have music playing and the LEDs blink as if they are dancing according the rhythm of the music.

- A video of the Dubai Mall's fountain:

![](vid1.mov)

- This is how is a simple sketch of how I imagine things will be:

![](img1.png)

### 27 November 2020:

- I worked on the processing code where I applied what I wanted to have to one circle of changing the background once the circle is pressed. 

- This is how it looked:

![](vid2.mov)

- I decided to get things done for one circle then apply the same strategy for the rest.

- I tried adding the music in the draw function for it to play when the circle is pressed however because it was in the draw function I played over and over again. To solve this problem, I used stackoverflow and I used this [link for help](https://stackoverflow.com/questions/40712592/how-to-use-play-inside-draw-in-processing-3), and it worked. I created an int x variable and the song played once.

- This is the part I added to the code:

![](img2.png)

### 28 November 2020:

- I worked on adding a back option in processing so whenever you wanted to change the song and go back to the main menu the song stops and the main menu shows. I got the song to stop but the main menu didn’t show up and the problem was that I had a no loop and when I removed it worked.

- This is how the things were:

![](vid3.mov)

- This is where the code failed to perform what it meant to do:

![](img3.png)

- This is how it worked after getting rid of the noLoop():

![](vid4.mov)

- Another problem with the song was that after it played once and I went back to the main menu and clicked again to play the song again it didn’t play. 

- This is how it looked:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid5.mov".

- I solved this issue by adding the upload option of the game in inside the draw function rather than the setup for it to play multiple times and this solved the issue.

- This how the processing screen looked after:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid6.mov".

- This is how the code looked:

![](img4.png)

- Unfortunately, after running the sketch a couple of times the song stopped playing again and a an error message showed up which is OutOfMemoryError. I thought maybe to keep the code this way and come back to it at the end if I wanted to or keep it this way where it plays once. 

- Another thing with the sound system code was that I switch to using the minim library. This is because the minim library had the option to playback, record, analysis and synthesis of sound which was an easier way to control the LEDs depending on the beat or the information I get from the song. This was also recommended by Professor Shiloh which will make the Arduino part of the code be easier to control.

### 29 November 2020:

- Today I thought why not add a theme to the project and since Christmas is on its way, I wanted the project to have a Christmas theme with Christmas songs. 

- I had another issue with the sound where when I added the other 4 songs to play only one played even when I pressed back and went to the main menu and pressed another circle.

- This was the problem:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid7.mov".

- So, I did that. Plus, I used this [link](https://stackoverflow.com/questions/17556228/how-to-play-only-one-audio-file-at-a-time-in-minim) to solve the issue of playing different songs depending on button pressed and going back to the main menu. I used the close() and this was the mistake, I used rewind() and pause() functions and it worked. But it still played the song once.

- This is how it turned after adjusting the code:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid8.mov".

### 30 November 2020:

- Today I worked a bit on the aesthetics of the processing window. By adding some writings and colors. I remembered that Katie once used a nice font, so I asked her and used the same font she used from her October 6 assignment.

- This is how the screen looks:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid9.mov".

- I also worked a having the Arduino communicate with processing today. I used one of the examples from processing as a starting point which was can be found in Processing > Examples > Contributed Examples > Learning Processing 2nd Edition > Chp 20 Sound > Example 8 Playback Analysis. Although the library used in this example was processing sound, I still implemented it in the processing code I had for my project.

- At first it was kind of weird and a bit difficult and confusing because I had to shift a couple of times between sound libraries. However, I used the same logic in applied in the example for my code. I had a bit of hard time because the functions were different, and I had to figure out how to organize the play and stop functions with having trouble of looping or stopping in the wrong time, but it worked. I only applied the code to only one song and tried it out and it worked. 

- I also worked on getting an Arduino code to see if things worked and they did. But maybe I’ll reduce the number of LEDs I had because the restrictions for blinking LEDs are very small only from 0 to 1.0 and I thought it would be better to have fewer lights to accompany the restrictions. 

- This is how it looks:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid10.mov".

### 1 December 2020:

- I re visited my processing code and applied the same logic of first song to the rest of the songs I had. And today I added comments to my code. 

- This is how it turned out with all of the songs working:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid11.mp4".

- I also started working on having the other way around communication between processing and Arduino but this time from Arduino to processing but it didnt work, I kept getting error messages such as nullpointexceptor and error, disabling serialEvent(). Then I worked things out and things didnt work and i kept getting in the serial mointer of processing the same message over and over again without me pressing or playing anything.

### 2 December 2020:

- Today, I tried solving the issue of pushbuttons, and to solve the issue, I started by having just one pushbutton in the code an tried to figure how to get it work and if it did, I will apply it to my other pushbuttons and songs. 

- To start off I looked into many videos and posts on google but this didn’t get my processing window to work. Then I decided to look into the codes of some of my classmates’ repositories. Since for November 24’s assignment we used communication too and some did use pushbuttons. I thought why not follow the same pattern or logic. I looked into Omar’s code, it was quite complex and full of parts, but I tried to follow the same logic he followed for his pushbuttons command. 

- After a lot of trials and changing codes, I got to a point where my serial monitor in processing did work and gave me a result of whether the pushbutton was detected or not. 

- This is what I got:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid12.mov".

- And because I reached to a point where I knew my pushbutton works and is sending signals, I knew there was something wrong with how I used the information I got in my code.

### 3 December 2020:

- I worked on trying to fix the issue with the pushbuttons, I removed everything that was extra in my code and kept it all just for one pushbutton. After a lot of trials I was able to get that done and my problem was with the Boolean music 1.

- This is how my code was:

![](img5.png)

![](img6.png)

- The problem was that I was re-assigning the Boolean again and not using it. So what I did was just use the Boolean when the push button is pressed since it was assigned rather than re-checking the Boolean. I was really annoyed because it took me a really long time to figure this out, but at the end of the day the feeling of figuring out what was wrong was stratifying and blessing.

- This is what I changed:

![](img7.png)

- This is how my project worked after:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid13.mov".

### 4 December 2020:

- Today I worked on getting things back together the way they were and combining what I did earlier with the pushbutton code.

- This is how it turned out:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid14.mov".

- I just added the rest of the push buttons and made sure they worked the way I wanted.

### 5 December 2020:

- I worked on adding the LEDs back and get them to work with the pushbuttons. Plus, I added my LEDs to make it look festive. However, when I combined it the LEDs didn’t work until the button was pressed all the time. I tried adding the pullup command in the Arduino code but still it didn’t work. Maybe I’ll keep it this way if I wasn’t able to find a way out.

- This is how it is working:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid15.mov".

### 6 December 2020:

- I worked on the processing aesthetics and commented both my code back.

- This is how it looks:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid16.mov".

### 7 December 2020:

- I couldn’t get the LEDs to work when the button is released nor was I able to have the music play more than once time. However, the button pressed for the LEDs to work all the time can be seen in a positive way, to keep the viewer attentive to the LEDs. So, when the player releases the button, it shows that he/she/they is not attentive, and this can keep the player engaged with the project.

- I tried working on the button press situation by checking if the button was pressed in Arduino to but it was miserably done that the whole Arduino code didn't work so I gave up on doing this and keep my positive thinking of having your finger constantly on the button to stay engaged with the LEDs blinking (metaphorically dancing).

### 8 December 2020:

- Today, I worked on finalizing my work on GitHub. I filled my README.md page and organized my Journal.md page. 

- I was still annoyed by how the LEDs were working. They looked crazy, although they worked depending on the values from the analyzer. 

- This is how they were working:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid17.mov".

- I worked a bit on the code and specifically the part where the analyzer was working. I changed the ranges that I had in the if statements and in this way, it looked better after fixing it.

- This is how it turned:

##### Note: the video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "vid18.mov".

### 9 December 2020:

- Final photographs and videos of the project were captured today.

![](img9.png)

![](img10.png)

##### Note: the final video is too big to be displayed by can be found in this [link](https://drive.google.com/drive/folders/17WSPBS9ddPIl0PlMjBwxAdKnHRF7-Zk8?usp=sharing) in the name "final vid.mov".
