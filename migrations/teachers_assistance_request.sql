CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  start_date DATE,
  end_date DATE
);

CREATE TABLE assistance_request (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) on DELETE CASCADE,
  teacher_id INTEGER REFERENCES teachers(id) on DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) on DELETE CASCADE,
  created_at DATE,
  started_at DATE,
  completed_at DATE,
  student_feedback TEXT,
  teacher_feedback TEXT
);