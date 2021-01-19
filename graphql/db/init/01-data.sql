\connect test_db;
INSERT INTO test_schema.parents (name, description) VALUES
('bob', 'boring old bob'),
('Jenny', 'boring old jenny');
INSERT INTO test_schema.children (name, description, parent_table_id) VALUES
('Tina', 'boring young Tina', 1),
('Tina2', 'boring young Tina2', 1),
('Joy', 'boring young Joy', 1),
('Justin', 'boring young Justin', 2),
('Charles', 'boring young charles', 2);
