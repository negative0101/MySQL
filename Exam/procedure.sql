CREATE PROCEDURE udp_reduce_price(category_name VARCHAR(50))
BEGIN
    UPDATE products
    SET price = price * 0.7
    WHERE id IN (SELECT * FROM (SELECT p.id
        FROM products AS p
        JOIN categories AS c
        ON p.category_id = c.id
        JOIN reviews AS r
        ON p.review_id = r.id
        WHERE  r.rating < 4 AND c.name = category_name) as x);
END

