1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT `degrees`.`name` as `degree_name`, `students`.`name` as `student_name`, `students`.`surname` as `student_surname`
FROM `degrees`
JOIN `students`
ON `degrees`.`id` = `students`.`degree_id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze

SELECT `departments`.`name` as `department_name` , `degrees`.`name` as `degree_name` 
FROM `departments`
JOIN `degrees`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = "Dipartimento di Neuroscienze"
AND `degrees`.`level` = "magistrale";

3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT `courses`.`name` as `course_name` , `teachers`.`name` as `teacher_name` , `teachers`.`surname` as `teacher_surname` 
FROM `courses` 
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `teachers`.`name`= "Fulvio"
AND `teachers`.`surname`="Amato"

4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

SELECT `students`.`surname` as `student_surname` , `students`.`name` as `student_name` , `degrees`.`name` as `degree_name` , `departments`.`name` as `department_name`
FROM `students` 
JOIN `degrees`
ON `students`.`degree_id`= `degrees`.`id`
JOIN `departments`
ON `degrees`.`department_id`=`departments`.`id`
ORDER BY `students`.`surname` ASC , `students`.`name` ASC;

5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti



6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami