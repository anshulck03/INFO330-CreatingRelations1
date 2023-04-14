CREATE TABLE courses (
    code VARCHAR(40) PRIMARY KEY,
    description VARCHAR(400) NOT NULL CHECK(LENGTH(description) > 6),
    start DATETIME NOT NULL,
    end DATETIME NOT NULL CHECK(end > start)
);

INSERT INTO courses(code, description, start, end)
VALUES
    ('INFO330A', 'Data and databases', '2023-04-01','2023-06-01'),
    ('INFO314', 'Networking and distributed systems', '2023-04-01',
    '2023-06-01'),
    ('INFO448A', 'Introduction to iOS', '2023-09-25', '2023-12-19'),
    ('INFO449A', 'Introduction to Android', '2023-09-25', '2023-12-19'),
    ('BAW010', 'Introduction to Basket-Weaving', '2023-04-01', '2023-06-01'),
    ('BAW100A', 'Underwater Basket-Weaving', '2023-04-01', '2023-06-01');


