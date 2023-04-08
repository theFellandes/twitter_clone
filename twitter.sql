CREATE DATABASE twitter;
CREATE TABLE social 
(
id int NOT NULL AUTO_INCREMENT,
first_name VARCHAR(255),
last_name VARCHAR(255),
password VARCHAR(255),
email VARCHAR(255),
date DATE,
username VARCHAR(255),
profile_picture VARCHAR(255),
number_of_posts int,
number_of_likes int,
user_closed tinyint(1),
friend_array text,
PRIMARY KEY (id)
);
CREATE TABLE posts
(
id int NOT NULL AUTO_INCREMENT,
added_by_user_id int,
user_to_user_id int,
body text,
date_added datetime,
deleted tinyint(1),
likes int,
PRIMARY KEY (id),
FOREIGN KEY (added_by_user_id) REFERENCES social(id),
FOREIGN KEY (user_to_user_id) REFERENCES social(id)
);
CREATE TABLE likes
(
id int NOT NULL AUTO_INCREMENT,
user_id int,
post_id int,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES social(id),
FOREIGN KEY (post_id) REFERENCES posts(id)
);
CREATE TABLE post_comments
(
id int NOT NULL AUTO_INCREMENT,
post_id int,
posted_by_user_id int,
posted_to_user_id int,
post_body text,
date_added datetime,
remove tinyint(1)
PRIMARY KEY (id),
FOREIGN KEY (posted_by_user_id) REFERENCES social(id),
FOREIGN KEY (posted_to_user_id) REFERENCES social(id),
FOREIGN KEY (post_id) REFERENCES posts(id)
);