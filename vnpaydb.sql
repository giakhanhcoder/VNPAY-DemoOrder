-- create database vnpaydb
CREATE TABLE user (
    user_id VARCHAR(36) PRIMARY KEY,
    user_name VARCHAR(255)
);

CREATE TABLE product (
    product_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    description VARCHAR(255),
    price VARCHAR(255),
    quantity VARCHAR(255)
);

CREATE TABLE payment_details (
    payment_detail_id VARCHAR(255) PRIMARY KEY,
    amount INT,
    paymentMethod VARCHAR(255),
    provider VARCHAR(255),
    create_at DATETIME
);

CREATE TABLE orders (
    order_id VARCHAR(36) PRIMARY KEY,
     payment_detail_id VARCHAR(255) ,
    user_id VARCHAR(36),
    total_price double,
    status VARCHAR(255),
    create_at VARCHAR(255),
    received_at VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (payment_detail_id) REFERENCES payment_details(payment_detail_id)
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