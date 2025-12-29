INSERT INTO student (student_id, student_name, gender, parent_name, parent_phone)
SELECT DISTINCT student_id, student_name, gender, parent_name, parent_phone
FROM school_records_clean;

INSERT INTO class (class_name, class_teacher, teacher_phone)
SELECT DISTINCT class_name, class_teacher, teacher_phone
FROM school_records_clean;

INSERT INTO subject (subject_name, subject_teacher)
SELECT DISTINCT subject_name, subject_teacher
FROM school_records_clean;

INSERT INTO term (term_name, year)
SELECT DISTINCT term_name, year
FROM school_records_clean;

INSERT INTO result (
    student_id,
    class_name,
    subject_name,
    term_id,
    ca1,
    ca2,
    exam,
    total,
    grade,
    school_fees_paid,
    payment_date
)
SELECT
    s.student_id,
    s.class_name,
    s.subject_name,
    t.term_id,
    s.ca1,
    s.ca2,
    s.exam,
    s.total,
    s.grade,
    s.school_fees_paid,
    s.payment_date
FROM school_records_clean s
JOIN term t 
  ON s.term_name = t.term_name AND s.year = t.year;


--To visualize each of the populated tables--
SELECT * FROM student LIMIT 10;
SELECT * FROM class LIMIT 10;
SELECT * FROM subject LIMIT 10;
SELECT * FROM term LIMIT 10;
SELECT * FROM result LIMIT 10;

