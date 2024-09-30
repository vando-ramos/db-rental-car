-- Create table locations

CREATE TABLE locations (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  total DECIMAL(10, 2) NOT NULL,
  customer_id INTEGER NOT NULL,
  car_id INTEGER NOT NULL,
  employee_id INTEGER NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(id),
  FOREIGN KEY (car_id) REFERENCES cars(id),
  FOREIGN KEY (employee_id) REFERENCES employees(id)
);

-- Insert data

INSERT INTO locations (id, start_date, end_date, total, customer_id, car_id, employee_id)
VALUES
(1, '2021-04-01', '2021-04-07', 1500, 1, 1, 2),
(2, '2022-05-20', '2022-05-30', 1800, 2, 1, 5),
(3, '2021-03-10', '2021-03-21', 2500, 5, 6, 5),
(4, '2018-02-20', '2018-03-05', 1250, 6, 4, 6),
(5, '2022-11-20', '2022-11-29', 900, 1, 3, 2),
(6, '2019-10-01', '2019-10-29', 2800, 3, 1, 6);

-- Query to display employees who have completed 2 or more rentals.

SELECT employees.name, COUNT(locations.id) AS total_rentals
FROM employees
JOIN locations ON employees.id = locations.employee_id
GROUP BY employees.name
HAVING COUNT(locations.id) >= 2;

-- Query to display customers who have completed 2 or more rentals.

SELECT customers.name, COUNT(locations.id) AS total_rentals
FROM customers
JOIN locations ON customers.id = locations.customer_id
GROUP BY customers.name
HAVING COUNT(locations.id) >= 2;
