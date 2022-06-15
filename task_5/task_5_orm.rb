all_students_count = Student.all.count
ivan_students_count = Student.where(name: "Иван").count
students_after_date = Student.where('created_at >= ?', '2020-09-01 00:00:00').count
students_with_parents_count = Student.where.not(parent_id: nil).count
students_without_parents_count = Student.where(parent_id: nil).count

