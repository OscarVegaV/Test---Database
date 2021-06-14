DROP TABLE IF EXISTS products_list;
CREATE TABLE products_list(
    products_list INT,    
    price INT,           --precios 
    quantity INT,        --cantidad
    total INT,           --precio total
    product_id INT,     -- id productos 
    invoice_id INT,
    FOREIGN KEY(product_id) REFERENCES products(id_product),
    FOREIGN KEY(invoice_id) REFERENCES invoices(invoice_id)   
);