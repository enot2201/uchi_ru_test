@arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

def find_unique_keys(arr)
  result = []
  arr.each { |x| result += x.keys}
  result.uniq
end

def find_unique_values(arr)
  result = []
  arr.each {|x| result += x.values}
  result.uniq
end

def find_sum_of_values()
  result = 0
  @values.each {|x| result += x}
  result
end

puts "Массив ключей (уникальных): #{find_unique_keys(@arr)}"
@values = find_unique_values(@arr)
puts "Массив значений (уникальных): #{@values}"
puts "Сумма значений (всех): #{find_sum_of_values()}"
