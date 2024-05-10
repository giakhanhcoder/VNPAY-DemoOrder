-- create database vnpaydb
CREATE TABLE user (
    user_id VARCHAR(36) PRIMARY KEY,
    user_name VARCHAR(255)
);

CREATE TABLE product (
    product_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    description VARCHAR(255),
    price int,
    quantity int
);

CREATE TABLE orders (
    order_id VARCHAR(36) PRIMARY KEY,
    user_id VARCHAR(36),
    total_price int,
    status VARCHAR(255),
    create_at DATETIME(6),
    received_at DATETIME(6),
    payment_method VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);


CREATE TABLE order_details (
    order_id VARCHAR(36),
    product_id BIGINT,
    quantity INT,
    price INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

insert into user(user_id ,user_name)
values(1, "Vu Gia Khanh")