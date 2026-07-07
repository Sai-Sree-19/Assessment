CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    department VARCHAR(100) NOT NULL,
    year_of_study INT NOT NULL,
    cgpa DECIMAL(3,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO students (
    first_name,
    last_name,
    email,
    department,
    year_of_study,
    cgpa
)
VALUES
('Sai', 'Sree', 'sai.sree@example.com', 'Computer Science', 4, 8.90),
('John', 'Doe', 'john.doe@example.com', 'Information Technology', 3, 8.25),
('Alice', 'Smith', 'alice.smith@example.com', 'Electronics', 2, 8.70),
('Rahul', 'Sharma', 'rahul.sharma@example.com', 'Mechanical', 4, 7.95),
('Priya', 'Reddy', 'priya.reddy@example.com', 'Civil', 1, 9.10),
('Arjun', 'Kumar', 'arjun.kumar@example.com', 'Computer Science', 2, 8.45),
('Neha', 'Patel', 'neha.patel@example.com', 'Electrical', 3, 8.15),
('Vikram', 'Singh', 'vikram.singh@example.com', 'Information Technology', 4, 8.60),
('Ananya', 'Gupta', 'ananya.gupta@example.com', 'Computer Science', 1, 9.30),
('Kiran', 'Rao', 'kiran.rao@example.com', 'Electronics', 2, 7.85);