
Design songs streaming : (https://www.linkedin.com/pulse/how-design-streaming-music-system-s-k-reddy)

   Requirements :

1.	User profile /Login Page
2.	Home Page /
3.	Songs by category ( singer, genre, movie)
4.	Operation on song :
A.	Download song
B.	Save to favorites
C.	Add to Playlist


  Estimation :

1.	How many users ?  ( 10 million)
2.	No of songs ? per category ? (varies)

  Design :

Availability – Imp
Latency – Important
Consistency – Read are more as compared to write , so not an imp factor.

  Deep Dive :

Write means: creating playlist, adding, removing songs
Read : listen sngs, browse playlist

  Data Structures :

User profile : DB (which ?)
-	User Info
-	Playlist created
-	
  Songs : (static data)

1.	Singer wise : unordered map
2.	Genre wise : map
3.	Movie wise: array of strings

-	ADD new songs at runtime.









