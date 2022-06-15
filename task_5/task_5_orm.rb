#количество всех студентов
all_students_count = Student.all.count
#Количество студентов с именем Иван
ivan_students_count = Student.where(name: "Иван").count
#Количество студентов созданых после 1 сентября 2020го
students_after_date = Student.where('created_at >= ?', '2020-09-01 00:00:00').count
#Количество студентов с родителями
students_with_parents_count = Student.where.not(parent_id: nil).count
#Количество студентов без родителей
students_without_parents_count = Student.where(parent_id: nil).count

