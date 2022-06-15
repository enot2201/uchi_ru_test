#количество всех студентов
ALL_STUDENTS_COUNT_SQL = 'SELECT COUNT(*) FROM custom_auth.student;'
#Количество студентов с именем Иван
IVAN_STUDENTS_COUNT_SQL = "SELECT count(*)
FROM custom_auth.student WHERE name='Иван'"
#Количество студентов созданых после 1 сентября 2020го
DATE_STUDENTS_COUNT_SQL = "SELECT COUNT(*) FROM custom_auth.student WHERE created_at > '2020-09-01'"
#Количество студентов с родителями
STUDENTS_WITH_PARENTS_COUNT_SQL = 'SELECT COUNT(*) FROM custom_auth.student WHERE parent_id IS NOT NULL'
#Количество студентов без родителей
STUDENTS_WITHOUT_PARENTS_COUNT_SQL = 'SELECT COUNT(*) FROM custom_auth.student WHERE parent_id IS NULL'
#Количество студентов с родителем Мариной
STUDENTS_PARENT_MARINA_COUNT_SQL = "SELECT COUNT(*)
FROM custom_auth.student INNER JOIN custom_auth.parent ON (custom_auth.student.parent_id = custom_auth.parent.id) WHERE (custom_auth.parent.name = 'Марина')"