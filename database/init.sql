CREATE TABLE IF NOT EXISTS employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    department VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO employees (first_name, last_name, email, department)
VALUES
('Sai', 'Sree', 'sai@example.com', 'DevOps'),
('John', 'Doe', 'john@example.com', 'Engineering'),
('Alice', 'Smith', 'alice@example.com', 'Cloud');