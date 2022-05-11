

CREATE TABLE tiendas (
	city VARCHAR(64),
	email VARCHAR(64),
	store_id int,
	store_name VARCHAR(64),
	street VARCHAR(64),
	PRIMARY KEY (store_id),
);

CREATE TABLE fechas (
	date_id int,
	date date,
	PRIMARY KEY (date_id),
);

INSERT INTO fechas(date, date_id)
VALUES
		('2016-01-01',1),
        ('2016-02-01',2),
        ('2016-03-01',3),
        ('2016-04-01',4),
        ('2016-05-01',5),
        ('2016-06-01',6),
        ('2016-07-01',7),
        ('2016-08-01',8),
        ('2016-09-01',9),
        ('2016-10-01',10),
        ('2016-11-01',11),
        ('2016-12-01',12),
        ('2017-01-01',13),
        ('2017-02-01',14),
        ('2017-03-01',15),
        ('2017-04-01',16),
        ('2017-05-01',17),
        ('2017-06-01',18),
        ('2017-07-01',19),
        ('2017-08-01',20),
        ('2017-09-01',21),
        ('2017-10-01',22),
        ('2017-11-01',23),
        ('2017-12-01',24)

CREATE TABLE vendedores(
	staff_id int,
	email VARCHAR(64),
	store_id int,
	first_name VARCHAR(64),
	last_name VARCHAR(64),
	manager_id int,
	PRIMARY KEY (staff_id),
);

CREATE TABLE ventas (
        order_id INT NOT NULL,
        staff_id INT NOT NULL,
        store_id INT NOT NULL,
        date date NOT NULL,
        PRIMARY KEY (order_id),
        FOREIGN KEY (staff_id) REFERENCES vendedores(staff_id),
        FOREIGN KEY (store_id) REFERENCES tiendas(store_id)
    );





