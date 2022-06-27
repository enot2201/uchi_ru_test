class TypeExeption < StandardError; end

@array_of_dict = [{ a: "x", b: 2, c: 45 }, { d: 123, c: 12 }, { e: 87 }]

def find_unique_keys(array)
  #Функция возвращающая массив всех ключей
  result = []
  array.each { |x| result += x.keys }
  result.uniq
end

def find_unique_values(array)
  #Функция возвращающая массив всех зачений
  result = []
  array.each { |x| result += x.values }
  result.each { |x|
    if type_validation?(x)
      raise TypeExeption
    end }
  result.uniq
rescue TypeExeption
    puts "В массиве присутствуют не численные значения"
    exit
end

def find_sum_of_values()
  #Функция возвращающая сумму всех значений
  result = 0
  if @values
  @values.each { |x| result += x }
  result
  else
    raise NoValueExeption
  end
rescue NoValueExeption
  puts "В словаре отсутствуют значения"
end

def type_validation?(value)
  #Проверка на то что введено численное значение
  false if Float(value) rescue true
end

puts "Массив уникальных ключей: #{find_unique_keys(@array_of_dict)}"
@values = find_unique_values(@array_of_dict)
puts "Массив уникальных значений: #{@values}"
puts "Сумма всех значений: #{find_sum_of_values()}"

