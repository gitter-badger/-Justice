CREATE TABLE users(
  username VARCHAR(45) NOT NULL PRIMARY KEY,
  password VARCHAR(450) NOT NULL,
  enabled INT NOT NULL DEFAULT 1
);

CREATE TABLE user_roles(
  user_role_id SERIAL PRIMARY KEY,
  username VARCHAR(45) NOT NULL,
  role VARCHAR(45) NOT NULL,
  FOREIGN KEY (username) REFERENCES users(username)
);

CREATE TABLE article (
  article_id bigserial primary key,
  article_name varchar(20) NOT NULL,
  article_desc text NOT NULL,
  date_added timestamp default NULL
);


CREATE TABLE product (
  id SERIAL PRIMARY KEY,
  name CHAR(30),
  price FLOAT
);

CREATE TABLE dishes_product (
  id_product INTEGER NOT NULL,
  id_dishes INTEGER NOT NULL
);

CREATE TABLE recipe (
  id SERIAL PRIMARY KEY,
  id_dish INTEGER NOT NULL,
  description TEXT
);

CREATE TABLE product_recipe (
  id_recipe INTEGER NOT NULL,
  id_product INTEGER NOT NULL
);

CREATE TABLE menu (
  id SERIAL PRIMARY KEY,
  name CHAR(30)
);

CREATE TABLE menu_dishes (
  id_menu INTEGER NOT NULL,
  id_dishes INTEGER NOT NULL
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  sum_price DOUBLE PRECISION,
  id_address INTEGER,
  status TEXT,
  date DATE
);

CREATE TABLE order_dishes (
  id_order INTEGER NOT NULL,
  id_dish INTEGER NOT NULL
);

CREATE TABLE address (
  id SERIAL PRIMARY KEY ,
  address TEXT,
  status TEXT
);

CREATE TABLE dishes (
  id SERIAL PRIMARY KEY,
  name CHAR(50) NOT NULL,
  price REAL,
  description TEXT
);