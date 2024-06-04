use checkpoint1;
/*Display all the data of customers */
select * from customer ;
/*Display the product_name and category for products which their price is between 5000 and 10000 */
select product_name,category from product where price between 5000 and 10000;
/*Display all the data of products sorted in descending order of price.
*/
select * from product order by price desc; 
/*Display the total number of orders, the average amount, the highest total amount and the lower total amountFor each product_id, display the number of orders*/
SELECT COUNT(*), AVG (price),max(price),min(price) from orders ;

/*Display the customer_id which has more than 2 orders*/ 
SELECT customer_id from orders group by customer_id having count(order_id)>2;
/*For each month of the 2020 year, display the number of orders*/

select extract(month from Orderdate) as month,count (order_id) from orders where extract(year from Orderdate)=2020  group by month order by month desc ;

/*For each order, display the product_name, the customer_name and the date of the order*/
SELECT o.order_id, p.product_name, c.customer_name, o.order_date
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
JOIN customers c ON o.customer_id = c.customer_id;
/*Display customers (customer_id) who have never ordered a product*/

SELECT c.customer_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

/*9-Display all the orders made three months ago */
select * from orders where OrderDate  between current-date and "03"; 


    
     
      
 
