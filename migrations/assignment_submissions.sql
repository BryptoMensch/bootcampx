CREATE TABLE assignment_submissions (
  id serial PRIMARY KEY not NULL,
  assignment_id INTEGER REFERENCES assignments(id) on DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);