DROP DATABASE IF EXISTS database_links;
CREATE DATABASE database_links CHARSET utf8mb4;
USE database_links;

CREATE TABLE users(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL,
    email VARCHAR(70) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

CREATE TABLE links(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    url VARCHAR(255),
    description TEXT,
    user_id INT UNSIGNED,
	FOREIGN KEY (user_id) REFERENCES users(id),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    
)

