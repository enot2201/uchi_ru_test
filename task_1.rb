#Надеюсь это было задание на проверку стандартных функций,а не креативное решение
test_arr = [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893]

def find_two_min_array_element(array_for_search)
  array_for_search.min(2)
end

def find_two_max_array_element(array_for_search)
  array_for_search.max(2)
end

puts "Минимальные значения массива: #{find_two_min_array_element(test_arr).to_s}"
puts "Максимальные значения массива: #{find_two_max_array_element(test_arr).to_s}"