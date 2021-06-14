\c supermarket

DROP TABLE IF EXISTS categories;
CREATE TABLE categories(
    id_category SERIAL PRIMARY KEY, -- id categoria    
    name VARCHAR(40),         --nombre 
    description VARCHAR(50)  --descripcion    
);

DROP TABLE IF EXISTS products;
CREATE TABLE products(
    id_product SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL, --NOMBRE CATEGORIA
    description TEXT, -- decripcion
    price INT NOT NULL, -- precio con iva
    category_id INT,
    FOREIGN KEY(category_id) REFERENCES categories(id_category)
);
DROP TABLE IF EXISTS customers; --borra todalas tablas anteriores

CREATE TABLE customers(         -- crea una tabla e introducimos los datos
    id_customer SERIAL PRIMARY KEY,    
    name VARCHAR(50),
    address VARCHAR(80)
        
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices(
    invoice_id SERIAL PRIMARY KEY, -- se crea la llave primaria
    created_at DATE NOT NULL,
    net INT NOT NULL, --valor neto
    tax INT NOT NULL, -- al iva
    gross INT NOT NULL, -- precio total con iva
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id_customer) -- aqui va la referencia de la FK
);





