CREATE TABLE `institutions` (
  `insitution_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`insitution_id`)
);

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(10) NULL,
  `accounts_id` int NOT NULL,
  PRIMARY KEY (`user_id`)
);

CREATE TABLE `connections` (
  `user_id` int NOT NULL,
  `insitution_id` int NOT NULL,
  PRIMARY KEY (`user_id`, `insitution_id`)
);

CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL,
  `user_id` int NOT NULL,
  `instution_id` int NOT NULL,
  `description` varchar(100) NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(50) NULL,
  PRIMARY KEY (`transaction_id`)
);

