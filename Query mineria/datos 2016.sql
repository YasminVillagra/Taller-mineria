CREATE PROCEDURE datos_2016
AS
 
    INSERT INTO tiendas(store_id, store_name,city,email,street)
        SELECT store_id, store_name, city, email, street
        FROM BikeStores.sales.stores;
 
    INSERT INTO vendedores(staff_id,email, store_id, first_name,last_name,manager_id)
        SELECT staff_id,email, store_id,first_name,last_name , manager_id
        FROM BikeStores.sales.staffs;
 
    INSERT INTO ventas(order_id, staff_id, store_id,date)
        SELECT order_id, staff_id, store_id,order_date
        FROM BikeStores.sales.orders 
        WHERE BikeStores.sales.orders.order_date BETWEEN '2016-01-01' AND '2016-12-31';

