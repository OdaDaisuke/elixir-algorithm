CREATE USER phoenix@localhost IDENTIFIED BY 'phoenix';
GRANT ALL PRIVILEGES ON `phoenix_sample%`.* TO 'phoenix'@'localhost' WITH GRANT OPTION;