class TypeExeption < StandardError; end
class MinTempExeption < StandardError; end

def convert_c_to_f(c_degree)
  #Конвертирование градусов цельсия в фаренгейты
  c_degree * 1.8 + 32.0
end

def min_temp_validation?(c_degree)
  #Температура по законам физики не может опускаться ниже данной велечины
  c_degree >= -273.15
end
def type_validation?(c_degree)
  #Проверка на то что введено численное значение
  false if Float(c_degree) rescue true
end

begin
  puts "Введите температуру по Цельсию"
  c_degree = gets.chomp
  if type_validation?(c_degree)
    raise TypeExeption
  end
  c_degree = c_degree.to_f
  if min_temp_validation?(c_degree)
    puts "Температура по Фаренгейту: #{convert_c_to_f(c_degree)}"
  else
    raise MinTempExeption
  end
rescue MinTempExeption
  puts "Что-то слишком холодно,это против законов физики"
  retry
rescue TypeExeption
  puts "Введите численное значение градусов для конвертирования"
  retry
end