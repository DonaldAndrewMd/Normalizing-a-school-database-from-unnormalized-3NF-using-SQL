
CREATE TABLE student (
    student_id TEXT PRIMARY KEY,
    student_name TEXT NOT NULL,
    gender CHAR(1),
    parent_name TEXT,
    parent_phone TEXT
);


CREATE TABLE class (
    class_name TEXT PRIMARY KEY,
    class_teacher TEXT,
    teacher_phone TEXT
);


CREATE TABLE subject (
    subject_name TEXT PRIMARY KEY,
    subject_teacher TEXT
);


CREATE TABLE term (
    term_id SERIAL PRIMARY KEY,
    term_name TEXT NOT NULL,
    year INT NOT NULL
);


CREATE TABLE result (
    result_id SERIAL PRIMARY KEY,
    student_id TEXT NOT NULL REFERENCES student(student_id),
    class_name TEXT NOT NULL REFERENCES class(class_name),
    subject_name TEXT NOT NULL REFERENCES subject(subject_name),
    term_id INT NOT NULL REFERENCES term(term_id),
    ca1 INT,
    ca2 INT,
    exam INT,
    total INT,
    grade CHAR(1),
    school_fees_paid TEXT,
    payment_date DATE
);
