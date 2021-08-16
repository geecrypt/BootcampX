CREATE TABLE assignment (
  id INTEGER PRIMARY KEY NOT NULL, 
  name VARCHAR(255),
  content TEXT, 
  day INTEGER, 
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submission (
  id INTEGER PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignment(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);