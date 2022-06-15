#количество всех студентов
ALL_STUDENTS_COUNT_SQL = 'SELECT COUNT(*) FROM "user".student;'
#Количество студентов с именем Иван (сложение строк применено чтобы ненарушить синтаксис SQL)
IVAN_STUDENTS_COUNT_SQL = 'SELECT count(*)
FROM "user".students' + "WHERE name='Иван'"
#Количество студентов созданых после 1 сентября 2020го (сложение строк применено чтобы ненарушить синтаксис SQL)
DATE_STUDENTS_COUNT_SQL = 'SELECT COUNT(*) FROM "user".students' + "WHERE created_at > '2020-09-01'"
#Количество студентов с родителями (сложение строк применено чтобы ненарушить синтаксис SQL)
STUDENTS_WITH_PARENTS_COUNT_SQL = 'SELECT COUNT(*) FROM "user".students WHERE parent_id IS NOT NULL'
#Количество студентов без родителей (сложение строк применено чтобы ненарушить синтаксис SQL)
STUDENTS_WITHOUT_PARENTS_COUNT_SQL = 'SELECT COUNT(*) FROM "user".students WHERE parent_id IS NULL'
#Количество студентов с родителем Мариной(сложение строк применено чтобы ненарушить синтаксис SQL)
STUDENTS_PARENT_MARINA_COUNT_SQL = 'SELECT COUNT(*)
FROM "user".students INNER JOIN "user".parents ON ("user".students.parent_id = "user".parents.id) + WHERE ("user".parents.name =' + "'Марина')"