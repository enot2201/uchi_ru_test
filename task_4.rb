class TypeExeption < StandardError; end
class MinTempExeption < StandardError; end

def convert_C_to_F(c_degree)
  #Конвертирование градусов цельсия в фаренгейты
  c_degree * 1.8 + 32.0
end

def min_temp_validation?(degree)
  #Температура по законам физики не может опускаться ниже данной велечины
  degree >= -273.15
end
def type_validation?(degree)
  #Проверка на то что введено численное значение
  Float(degree) == nil rescue false
end

begin
  puts "Введите температуру по Цельсию"
  degree = gets.chomp
  if type_validation?(degree)
    raise TypeExeption
  end
  degree = degree.to_f
  if min_temp_validation?(degree)
    puts "Температура по Фаренгейту: #{convert_C_to_F(degree)}"
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