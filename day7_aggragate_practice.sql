-- Day 7: Aggregation + CASE Statement Practice

-- 1. Instructor with more than 1 course and avg students > 500
SELECT instructor,
       COUNT(*) AS total_courses,
       AVG(students_enrolled) AS avg_students
FROM course
GROUP BY instructor
HAVING COUNT(*) > 1 AND AVG(students_enrolled) > 500;

-- 2. Instructor whose total students = highest single course
SELECT instructor, SUM(students_enrolled) AS total_students
FROM course
GROUP BY instructor
HAVING SUM(students_enrolled) = (
    SELECT MAX(students_enrolled) FROM course
);

-- 3. Categorize courses by enrollment level
SELECT course,
       instructor,
       CASE
           WHEN students_enrolled > 500 THEN 'High'
           ELSE 'Normal'
       END AS level
FROM course;
