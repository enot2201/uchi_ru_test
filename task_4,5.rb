@colors = ["red", "yellow", "green"]
@correct_action = @colors.append("off")

class ValidateAction < StandardError; end

def is_input_valid?(input)
  @correct_action.include?(input)
end

begin
  while true
    puts "Введите текущий цвет светофора\nЧтобы завершить программу введите off"
    input = gets.chomp
    if !is_input_valid?(input)
      raise ValidateAction
    end
    case input
    when "off"
      puts "Выключаем светофор"
      break
    when "red"
      puts "Подождите"
    when "yellow"
      puts "Приготовьтесь"
    when "green"
      puts "Можете начать движение"
    end
  end
rescue ValidateAction
  puts "Ошибка у светофора только три цвета: #{@colors.to_s}"
  retry
end