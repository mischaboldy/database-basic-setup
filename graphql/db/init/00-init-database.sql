CREATE DATABASE test_db;

\connect test_db;

CREATE SCHEMA test_schema;
CREATE TABLE test_schema.parents (
                                          id SERIAL PRIMARY KEY,
                                          name TEXT,
                                          description TEXT,
                                          created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                          updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
COMMENT ON TABLE test_schema.parents IS
'names of parents';
CREATE TABLE test_schema.children (
                                         id SERIAL PRIMARY KEY,
                                         name TEXT,
                                         description TEXT,
                                         created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                         updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                         parent_table_id INTEGER NOT NULL REFERENCES test_schema.parents(id)
);
COMMENT ON TABLE test_schema.children IS
'Names of their children';