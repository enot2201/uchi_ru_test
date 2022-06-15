@array_of_dict = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

def find_unique_keys(array)
  result = []
  array.each { |x| result += x.keys}
  result.uniq
end

def find_unique_values(array)
  result = []
  array.each {|x| result += x.values}
  result.uniq
end

def find_sum_of_values()
  result = 0
  @values.each {|x| result += x}
  result
end

puts "Массив уникальных ключей: #{find_unique_keys(@array_of_dict)}"
@values = find_unique_values(@array_of_dict)
puts "Массив уникальных значений: #{@values}"
puts "Сумма всех значений: #{find_sum_of_values()}"
