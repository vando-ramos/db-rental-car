-- Create table customers

CREATE TABLE customers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  lastname VARCHAR(255) NOT NULL,
  phone INTEGER(30) NOT NULL,
  email VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  city VARCHAR(100) NOT NULL,
  state VARCHAR(2) NOT NULL,
  birth_date DATE NOT NULL
);

-- Insert data

INSERT INTO customers (id, name, lastname, phone, email, address, city, state, birth_date)
VALUES
(1, 'Roberto', 'Silva', '(11) 964', 'roberto@gmail.com', 'Rua José, 32', 'São Roque', 'SP', '1987-04-25'),
(2, 'MARIA', 'Gomes', '(11) 974', 'maria@yahoo.com', 'Rua das Flores, 44', 'São Paulo', 'SP', '1988-03-24'),
(3, 'Renata', 'Antunes', '(11) 974', 'renata@hotmail.com', 'Rua dos Antunes, 55', 'Sorocaba', 'SP', '1970-05-01'),
(4, 'Josefa', 'Duarte', '(11) 973', 'josefa20@gmail.com', 'Rua dos Flocos, 387', 'Mairinque', 'SP', '1988-06-18'),
(5, 'André', 'Linares', '(11) 975', 'andre.lin@gmail.com', 'Rua Palmeiras, 3', 'Rio de Janeiro', 'RJ', '2000-11-04'),
(6, 'Mário', 'Santana', '(11) 974', 'mario@gmail.com', 'Rua das Rosas, 8', 'Salvador', 'BA', '1999-12-15'),
(7, 'Luis', 'Duarte', '(11) 987', 'luis@hotmail.com', 'Rua das Orquidias, 18', 'Fortaleza', 'CE', '1985-07-06'),
(8, 'Dalva', 'Malheiros', '(11) 966', 'dalva@gmail.com', 'Rua das Nogueiras, 12', 'São Paulo', 'SP', '1956-08-03'),
(9, 'Carolina', 'Medeiros', '(11) 935', 'carol@ig.com.br', 'Rua dos Jatobás, 1', 'Cajamar', 'SP', '1974-08-21'),
(10, 'Marcos', 'Rodrigues', '(11) 972', 'marcos@uol.com.br', 'Rua das Amazonas, 89', 'Recife', 'PE', '1966-05-25');

-- Update Carolina's email 

UPDATE customers
SET email = 'carolina@campuscode.com.br'
WHERE name = 'Carolina' AND email = 'carol@ig.com.br';

-- Update Josefa's birth_date

UPDATE customers
SET birth_date = '1986-06-19'
WHERE name = 'Josefa';

-- Query to display name, lastname and email

SELECT name, lastname, email
FROM customers
WHERE state = 'SP';
