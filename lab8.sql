CREATE TABLE Users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255)
);

CREATE TABLE Projects (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255)
);

CREATE TABLE Tasks (
  id INT PRIMARY KEY AUTO_INCREMENT,
  project_id INT,
  author_id INT,
  description TEXT,
  FOREIGN KEY (project_id) REFERENCES Projects(id),
  FOREIGN KEY (author_id) REFERENCES Users(id)
);

CREATE TABLE TaskAssignments (
  task_id INT,
  user_id INT,
  FOREIGN KEY (task_id) REFERENCES Tasks(id),
  FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE Files (
  id INT PRIMARY KEY AUTO_INCREMENT,
  project_id INT,
  task_id INT,
  name VARCHAR(255),
  path VARCHAR(255),
  FOREIGN KEY (project_id) REFERENCES Projects(id),
  FOREIGN KEY (task_id) REFERENCES Tasks(id)
);

-- Додавання користувачів
INSERT INTO Users (name) VALUES ('User 1');
INSERT INTO Users (name) VALUES ('User 2');
INSERT INTO Users (name) VALUES ('User 3');

-- Додавання проектів
INSERT INTO Projects (name) VALUES ('Project 1');
INSERT INTO Projects (name) VALUES ('Project 2');
INSERT INTO Projects (name) VALUES ('Project 3');

-- Додавання завдань
INSERT INTO Tasks (project_id, author_id, description) VALUES (1, 1, 'Task description 1');
INSERT INTO Tasks (project_id, author_id, description) VALUES (1, 2, 'Task description 2');
INSERT INTO Tasks (project_id, author_id, description) VALUES (2, 1, 'Task description 3');

-- Додавання виконавців завдань
INSERT INTO TaskAssignments (task_id, user_id) VALUES (1, 2);
INSERT INTO TaskAssignments (task_id, user_id) VALUES (1, 3);
INSERT INTO TaskAssignments (task_id, user_id) VALUES (2, 3);

-- Додавання файлів
INSERT INTO Files (project_id, task_id, name, path) VALUES (1, NULL, 'File 1', 'path_to_file_1');
INSERT INTO Files (project_id, task_id, name, path) VALUES (1, 1, 'File 2', 'path_to_file_2');
INSERT INTO Files (project_id, task_id, name, path) VALUES (2, NULL, 'File 3', 'path_to_file_3');
