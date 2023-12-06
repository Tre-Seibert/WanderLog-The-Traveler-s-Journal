CREATE DATABASE wanderlog;


CREATE TABLE users (
	name VARCHAR (20),
	username VARCHAR (20) NOT NULL,
    password VARCHAR (20),
    PRIMARY KEY(username)
);

CREATE TABLE visits (
    visit_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(20),
    city VARCHAR(120) NOT NULL,
    country VARCHAR(120) NOT NULL,
    depart_date DATE,
    return_date DATE,
    notes TEXT,
    FOREIGN KEY (username) REFERENCES users(username)
);