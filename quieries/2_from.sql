--¿Que cliente pagó sobre 100 de monto?

select customer_id, name FROM invoices, customers
WHERE gross > 100 LIMIT 4;
