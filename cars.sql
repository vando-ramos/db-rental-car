-- Create table cars

CREATE TABLE cars (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  year INTEGER NOT NULL,
  color VARCHAR(50) NOT NULL,
  km INTEGER NOT NULL,
  status VARCHAR(50) NOT NULL,
  brand_id INTEGER NOT NULL,
  model_id INTEGER NOT NULL,
  FOREIGN KEY (brand_id) REFERENCES car_brand(id),
  FOREIGN KEY (model_id) REFERENCES car_model(id)
);

-- Insert data

INSERT INTO cars (id, name, year, color, km, status, brand_id, model_id)
VALUES
(1, 'Chevrolet Onix LT', 2016, 'Preto', 8000, 'Liberado', 1, 3),
(2, 'Hyundai HB20 1.6', 2022, 'Prata', 3000, 'Em manutenção', 3, 3),
(3, 'Toyota Yaris', 2021, 'Branca', 10000, 'Liberado', 2, 3),
(4, 'Fiat Cronos', 2022, 'Preto', 2500, 'Liberado', 8, 2),
(5, 'Honda HR-V', 2018, 'Prata', 40000, 'Em manutenção', 7, 6),
(6, 'VW Amarok', 2019, 'Prata', 25000, 'Liberado', 4, 6);

-- Update Fiat Cronos year

UPDATE cars
SET year = '2019'
WHERE name = 'Fiat Cronos';

-- Delete Hyundai HB20 1.6

DELETE FROM cars
WHERE name = 'Hyundai HB20 1.6';

-- Query to display only status 'Liberado'

SELECT * FROM cars
WHERE status = 'Liberado';