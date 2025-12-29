# Background
This project started with an unnormalized CSV dataset representing school records for BFSS School. 

The original data had:

- Repeated student, class, and subject information
- Redundant fields for class teachers, subjects, and terms


### Challenges with Unnormalized Data

- Redundancy: Student, class, and subject details were repeated across multiple rows
- Inconsistent data structure: Everything being on one row makes it to enforce rules or run accurate queries.
- Poor scalability: Adding new terms, classes, or subjects required further duplicating of the already bloated data

### Normalization Process

To solve these issues, I applied database normalization principles up to 3NF:

- Identified entities: Student, Class, Subject, Term, and Result (bridge table)
- Created separate tables for each entity with proper primary keys
- Linked tables via foreign keys in the RESULT bridge/fact table

### Improvements and Advantages
- Reduced redundancy: Each piece of information is stored only once
- Improved data integrity: I added foreign foreign key constraints to prevent inconsistent entries
- Simplified updates: Updating teacher names or student details happens in one place
- Scalable design: Easy to extend with new terms, classes, or subjects without rewriting data

### ER Diagram
<img width="3146" height="1922" alt="ER diagrams" src="https://github.com/user-attachments/assets/d1350bf5-8189-4baf-80a5-391086efcb45" />
_The draw.io file is uploaded to this repo_
### Entities
1. STUDENT stores student and parent info
2. CLASS stores class names and teachers
3. SUBJECT stores subjects and teachers
4. TERM stores term name and year
5. RESULT acts as a bridge linking students, subjects, classes, and terms while storing CA scores, exams, totals, grades, and payment info

#### Relationships:

1. STUDENT → RESULT (1:M)
2. CLASS → RESULT (1:M)
3. SUBJECT → RESULT (1:M)
4. TERM → RESULT (1:M)

