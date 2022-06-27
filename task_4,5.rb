#возможные цвета светофора для вывода
@colors = ["red", "yellow", "green"]
#все возможные операции
@correct_action = @colors.append("off")

class ValidateAction < StandardError; end

def is_input_valid?(input)
  @correct_action.include?(input)
end

begin
  while true
    puts "Введите текущий цвет светофора\nЧтобы завершить программу введите off"
    color_at_now = gets.chomp
    unless is_input_valid?(color_at_now)
      raise ValidateAction
    end
    case color_at_now
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