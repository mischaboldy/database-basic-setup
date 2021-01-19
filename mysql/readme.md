# mysql
### start
run command: `docker-compose up -d --build`

download mysql workbench and connect
create connection with settings;

```
hostname: 127.0.0.1
port: 3306
username: user
password: password
```

### create tables:

execute the following queries to create some tables
```
USE db;
CREATE TABLE IF NOT EXISTS parent (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date_of_birth DATE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

```
USE db;
CREATE TABLE IF NOT EXISTS child (
    id INT AUTO_INCREMENT,
    parent_id INT,
    name VARCHAR(255) NOT NULL,
    date_of_birth DATE,
    description TEXT,
    PRIMARY KEY (id , parent_id),
    FOREIGN KEY (id)
        REFERENCES parent (id)
        ON UPDATE RESTRICT ON DELETE CASCADE
);
```

after creating, right click on `tables` and hit `refresh all`;

### insert data

execute the follow queries to insert some data:

```
INSERT INTO parent (name, date_of_birth, description)
VALUES ('bob', '1967-01-01', 'boring old bob');

INSERT INTO parent (name, date_of_birth, description)
VALUES ('Jenny', '1989-10-16', 'boring old jenny');

INSERT INTO child (name, parent_id, date_of_birth, description)
VALUES ('Tina', 1, '2002-11-04', 'boring young Tina');

INSERT INTO child (name, parent_id, date_of_birth, description)
VALUES ('Tina2', 1, '2002-11-04', 'boring young Tina2');

INSERT INTO child (name, parent_id, date_of_birth, description)
VALUES ('Joy', 1, '2004-03-27', 'boring young Joy');

INSERT INTO child (name, parent_id, date_of_birth, description)
VALUES ('Justin', 2, '1995-07-23', 'boring young Justin');

INSERT INTO child (name, parent_id, date_of_birth, description)
VALUES ('charles', 2, '1997-05-10', 'boring young charles');

```

### review data
execute the following queries to retrieve data:

```
SELECT * FROM db.parent INNER JOIN db.child ON parent.id=child.parent_id;
```

```
SELECT * FROM db.child WHERE parent_id=1;
```