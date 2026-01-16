TRUNCATE TABLE travel_history;

INSERT INTO travel_history (date, start_city, end_city, traveler) VALUES
('2024-01-01', 'Delhi',     'Dubai',     'Amit'),
('2024-01-05', 'Dubai',     'London',    'Amit'),
('2024-01-10', 'London',    'Delhi',     'Amit'),
('2024-02-01', 'Mumbai',    'Singapore', 'Priya'),
('2024-02-05', 'Singapore', 'Sydney',    'Priya'),
('2024-02-10', 'Sydney',    'New York',  'Priya'),
('2024-03-01', 'Kolkata',   'Bangkok',   'Raj'),
('2024-03-03', 'Bangkok',   'Tokyo',     'Raj'),
('2024-03-07', 'Tokyo',     'Kolkata',   'Raj'),
('2024-04-01', 'Bangalore', 'Paris',     'Neha'),
('2024-04-05', 'Paris',     'Rome',      'Neha'),
('2024-04-10', 'Rome',      'Berlin',    'Neha'),
('2024-05-01', 'Chennai',   'Dubai',     'Arjun'),
('2024-05-03', 'Dubai',     'Amsterdam', 'Arjun'),
('2024-05-06', 'Amsterdam', 'Chennai',   'Arjun');
