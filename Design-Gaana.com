
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

Storage :

Content created by users, static content and content from anonymous sources need to be stored at third party storages, like on cloud. Google Cloud, Azure, Amazon S3, etc provide simple solutions to store. 
These cloud storage solutions are cheap and are designed for high availability.

Content Delivery Network (CDN) is another solution that could be used to deliver static content. Also having a subdomain or a separate domain for static content will enhance the response speed. 

NGINIX could be deployed to stored and supply static data. NGINIX has other benefits in caching and load balancing.

The rest of the content will be stored in-house. This separation of content will put less strain on the systems & servers that you create to serve your customers. MongoDB, RethinkDB, Apache CouchDB and Couchbase Server are some databases that provide excellent support in storing and retrieving dynamic content.














