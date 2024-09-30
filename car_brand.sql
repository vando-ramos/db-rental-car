-- Create table car_brand

CREATE TABLE car_brand (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  brand_name VARCHAR(100) NOT NULL
);

-- Insert data

INSERT INTO car_brand (id, brand_name)
VALUES
(1, 'Chevrolet'),
(2, 'Toyota'),
(3, 'Hyundai'),
(4, 'Volkswagen'),
(5, 'Jeep'),
(6, 'Renault'),
(7, 'Honda'),
(8, 'Fiat');