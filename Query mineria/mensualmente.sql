CREATE PROCEDURE mensualmente  @ANO INT, @MES INT
AS
    INSERT INTO ventas(order_id,staff_id,store_id,date)
        SELECT order_id, staff_id, store_id, order_date
        FROM BikeStores.sales.orders 
        WHERE MONTH(BikeStores.sales.orders.order_date) = @MES AND YEAR(BikeStores.sales.orders.order_date) = @ANO;
