CREATE TABLE branch (
  id varchar(50) NOT NULL,
  branch_name varchar(16) NOT NULL,
  PRIMARY KEY (branch_name)
);

CREATE TABLE category (
  id varchar(50) NOT NULL,
  name varchar(32) NOT NULL,
  percentage varchar(12) DEFAULT NULL,
  PRIMARY KEY (name)
);

CREATE TABLE payment_method (
  payment_id varchar(50) DEFAULT NULL,
  name varchar(50) NOT NULL,
  total_weekly int NOT NULL,
  PRIMARY KEY (name)
);

CREATE TABLE inventory (
  id varchar(50) NOT NULL,
  name varchar(64) NOT NULL,
  category_name varchar(32) NOT NULL,
  inventory_quantity int NOT NULL DEFAULT '0',
  incoming_time_stamp datetime DEFAULT NULL,
  PRIMARY KEY (name),
  FOREIGN KEY (category_name) REFERENCES category (name)
);

CREATE TABLE outgoing_stock (
  id varchar(50) NOT NULL,
  item_name varchar(64) NOT NULL,
  category_name varchar(32) NOT NULL,
  user_name varchar(32) DEFAULT NULL,
  branch_name varchar(16) DEFAULT NULL,
  quantity int NOT NULL,
  time_stamp datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (branch_name) REFERENCES branch (branch_name),
  FOREIGN KEY (item_name) REFERENCES inventory (name),
  FOREIGN KEY (category_name) REFERENCES category (name),
  FOREIGN KEY (user_name) REFERENCES user (name)
);

CREATE TABLE sale_weekly (
  id varchar(50) NOT NULL,
  item_name varchar(64) DEFAULT NULL,
  category varchar(32) DEFAULT NULL,
  quantity int NOT NULL DEFAULT '1',
  price int NOT NULL DEFAULT '0',
  user_name varchar(32) DEFAULT NULL,
  time_stamp datetime DEFAULT NULL,
  payment_method varchar(50) DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (category) REFERENCES inventory (category_name),
  FOREIGN KEY (payment_method) REFERENCES payment_method (name),
  FOREIGN KEY (user_name) REFERENCES user (name),
  FOREIGN KEY (item_name) REFERENCES inventory (name)
);
