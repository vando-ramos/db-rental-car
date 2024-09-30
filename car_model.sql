-- Create table car_model

CREATE TABLE car_model (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  model_name VARCHAR(255) NOT NULL
);

-- Insert data

INSERT INTO car_model (id, model_name)
VALUES
(1, 'Conversível'),
(2, 'Sedã'),
(3, 'Hatch'),
(4, 'Coupé'),
(5, 'Perua'),
(6, 'SUV'),
(7, 'Picape'),
(8, 'Minivan'),
(9, 'Utilitário'),
(10, 'Buggy');