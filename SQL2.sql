CREATE TABLE product1(
	id INT NOT NULL,
    product_name VARCHAR (20),
    PRIMARY KEY (id)
);
CREATE TABLE product2(
	id INT NOT NULL,
    product_name VARCHAR(20),
    PRIMARY KEY (id)
);
SELECT * FROM product1;
SELECT * FROM product2;
INSERT INTO product1 (id,product_name) VALUES (1,'fan');
INSERT INTO product1 (id,product_name) VALUES (2,'cooler');
INSERT INTO product1 (id,product_name) VALUES (3,'ac');
INSERT INTO product2 (id,product_name) VALUES (1,'computer');
INSERT INTO product2 (id,product_name) VALUES (2,'laptop');
INSERT INTO product2 (id,product_name) VALUES (3,'smartphone');
INSERT INTO product2 (id,product_name) VALUES (4,'tablet');
INSERT INTO product2 (id,product_name) VALUES (5,'fan');
SELECT product_name FROM product1 UNION ALL SELECT product_name FROM product2;