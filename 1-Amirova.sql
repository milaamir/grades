SELECT student.id, student.name, `group`.name FROM student
INNER JOIN `group` ON student.group_id = `group`.idstudent;

SELECT student.name, `group`.name FROM student
LEFT JOIN `group` ON student.group_id = `group`.id WHERE `group`.name = "11701";

SELECT student.name, student.id, `subject`.name, `students_grade`.grade_date, `students_grade`.grade FROM student
LEFT JOIN `students_grade` ON student.id = `students_grade`.student_id
LEFT JOIN `subject` ON `subject`.id = `students_grade`.subject_id;

SELECT student.id, student.name, `subject`.name, `students_grade`.grade FROM student
LEFT JOIN `students_grade` ON student.id = `students_grade`.student_id 
LEFT JOIN `subject` ON `subject`.id = `students_grade`.subject_id WHERE student.id = "26" AND `subject`.name = " Информатика";

SELECT  `group`.id, student.name, `students_grade`.grade FROM student
LEFT JOIN `students_grade` ON student.id = `students_grade`.student_id
LEFT JOIN `subject` ON `subject`.id = `students_grade`.subject_id 
LEFT JOIN `group` ON student.group_id = `group`.id WHERE `group`.id = "4";