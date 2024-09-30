-- Create table employees

CREATE TABLE employees (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  phone VARCHAR(30) NOT NULL,
  contract_date DATE NOT NULL,
  position_id INTEGER NOT NULL,
  FOREIGN KEY (position_id) REFERENCES positions(id)
);

-- Insert data

INSERT INTO employees (id, name, phone, contract_date, position_id)
VALUES
(1, 'Adriana Lemes', '(11) 98789-9999', '2021-04-10', 1),
(2, 'Camila Soares', '(11) 92749-9599', '2008-03-25', 3),
(3, 'Leonardo Silva', '(11) 91449-9600', '2018-08-26', 5),
(4, 'Mayara Gomes', '(11) 92649-9601', '2016-07-18', 2),
(5, 'Matheus Alves', '(11) 92749-9602', '2015-03-04', 5),
(6, 'Aline Santos', '(11) 99789-3135', '2020-05-06', 3);