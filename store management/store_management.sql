CREATE DATABASE store_management;

CREATE TABLE Governorate (
    id integer PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE store(
    id integer PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    governorate_id integer,
    FOREIGN KEY( governorate_id) REFERENCES governorate(id)
    
);
CREATE TABLE supplier(
    id integer PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
     email VARCHAR(50),
     phone VARCHAR(20) NOT NULL,
    brief_data text
    
);
CREATE TABLE product(
    id integer PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    price DECIMAL NOT NULL,
    code VARCHAR(50) NOT NULL UNIQUE,
    description text,
    supplier_id integer,
    FOREIGN KEY(supplier_id) REFERENCES supplier(id)
    
);

CREATE TABLE store_product(
    store_id integer,
    product_id integer,
    PRIMARY KEY (store_id, product_id ),
    FOREIGN KEY (store_id) REFERENCES store(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);