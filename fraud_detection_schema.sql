-- Drop "card_holder" table if exists
DROP TABLE IF EXISTS card_holder;

-- Create the table "card_holder"
CREATE TABLE card_holder (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50)
  );


-- Drop "credit_card" table if exists
DROP TABLE IF EXISTS credit_card;

-- Create the table "credit_card"
CREATE TABLE credit_card(
card VARCHAR(20),
cardholder_id INT
  );


-- Drop "merchant" table if exists
DROP TABLE IF EXISTS merchant;

-- Create the table "merchant"
CREATE TABLE merchant(
id SERIAL PRIMARY KEY,
  name VARCHAR(50),
	id_merchant_category INT 
  );


-- Drop "merchant_category" table if exists
DROP TABLE IF EXISTS merchant_category;

-- Create the table "merchant_category"
CREATE TABLE merchant_category(
id SERIAL PRIMARY KEY,
  name VARCHAR(30)
	);


-- Drop "transaction" table if exists
DROP TABLE IF EXISTS transaction;

-- Create the table "transaction"
CREATE TABLE transaction(
id  SERIAL PRIMARY KEY,
date TIMESTAMP,
amount NUMERIC(20,10)NOT NULL,
card VARCHAR(20),
id_merchant INT
);