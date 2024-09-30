-- Create table positions

CREATE TABLE positions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  description VARCHAR(100) NOT NULL
);

-- Insert data

INSERT INTO positions (id, description)
VALUES
(1, 'Gerente de vendas'),
(2, 'Gerente de compras'),
(3, 'Vendedor'),
(4, 'Mecânico'),
(5, 'Assistente Administrativo');