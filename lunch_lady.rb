require_relative 'main_dish'
require_relative 'side_dish'
require_relative 'second_side'


class LunchLady
  def  initialize
    @current_total = 0
    @main_dishes = [
      MainDish.new('Meatloaf', 5),
      MainDish.new('Tacos', 3),
      MainDish.new('Casserole', 6),
      MainDish.new('Burger', 4)]
    @side_dishes = [
      SideDish.new('Beans', 1),
      SideDish.new('Rice', 2),
      SideDish.new('Corn', 1),
      SideDish.new('Potatoes',1)]
    @second_side_dish = [
      SideDish.new('Broccoli', 1),
      SideDish.new('Cabbage', 2),
      SideDish.new('Cauliflower', 1),
      SideDish.new('Coleslaw',2)]
  end

  
  
  # all your other stuff in here - like get user
  def print_main
    puts " -------------------------------------"
    puts "Here are today's main dish options:"
    @main_dishes.each_with_index do |dish, index|
      puts "#{index + 1}) #{dish.info}"
    end
    puts " -------------------------------------"   
    puts "\nWhat would you like to have for your main dish?"
    puts "Type in the name of the dish"
    print "> "
        
      case @main_dish_choice = gets.chomp.capitalize
        when "Meatloaf" 
          @current_total = @current_total + 5.00
          # puts "\nLittle Ceasars or bust!"
          puts "\nPress RETURN to select a side dish:"
          print "> "
          gets.chomp
          side_dish_menu
    
          # puts "\nPress RETURN to keep playing:"
          # print "> "
          # gets.chomp
        when "Tacos"
          @current_total = @current_total + 3.00

          puts "\nPress RETURN to select a side dish:"
          print "> "
          gets.chomp
          side_dish_menu
      
          # puts "\nPress RETURN to keep playing:"
          # print "> "
          # gets.chomp
        when "Casserole"
          @current_total = @current_total +  6.00

          puts "\nPress RETURN to select a side dish:"
          print "> "
          gets.chomp
          side_dish_menu
      
          # puts "\nPress RETURN to keep playing:"
          # print "> "
          # gets.chomp
        when "Burger"
          @current_total = @current_total +  4.00

          puts "\nPress RETURN to select a side dish:"
          print "> "
          gets.chomp
          side_dish_menu
      
          # puts "\nPress RETURN to keep playing:"
          # print "> "
          # gets.chomp
        else
          puts "invalid input"
          print_main
    end
  end

  def side_dish_menu
    puts " -------------------------------------"
    puts "Here are today's side dish options:"
    @side_dishes.each_with_index do |dish, index|
      puts "#{index +1}) #{dish.info}"
    end
    
    puts " -------------------------------------"   
    puts "\nWhat would you like to have for your First side dish?"
    puts "Type in the name of the dish"
    print "> "

    case @side_dish_choice = gets.chomp.capitalize
    when "Beans"
      @current_total = @current_total + 1.00

        # @current_total += 2.00
        # puts "\nLittle Ceasars or bust!"
        puts "\nPress RETURN to select a second side dish:"
        print "> "
        gets.chomp
        second_side_menu
  
        # puts "\nPress RETURN to keep playing:"
        # print "> "
        # gets.chomp
    when "Rice"
      @current_total = @current_total +  2.00

        puts "\nPress RETURN to select a second side dish:"
        print "> "
        gets.chomp
        second_side_menu
    
        # puts "\nPress RETURN to keep playing:"
        # print "> "
        # gets.chomp
    when "Corn"
      @current_total = @current_total + 1.00

      puts "\nPress RETURN to select a second side dish:"
      print "> "
        gets.chomp
        second_side_menu
    
        # puts "\nPress RETURN to keep playing:"
        # print "> "
        # gets.chomp
    when "Potatoes"
      @current_total = @current_total + 1.00

      puts "\nPress RETURN to select a second side dish:"
      print "> "
        gets.chomp
        second_side_menu
    
        # puts "\nPress RETURN to keep playing:"
        # print "> "
        # gets.chomp
    else
        puts "invalid input"
        side_dish_menu
    end
  end

  def second_side_menu
    puts " -------------------------------------"
    puts "Here are today's second dish options:"
    @second_side_dish.each_with_index do |dish, index|
      puts "#{index +1}) #{dish.info}"
    end
    puts " -------------------------------------"   
    puts "\nWhat would you like to have for your second side dish?"
    puts "Type in the name of the dish"
    print "> "
        
      case @second_dish_choice = gets.chomp.capitalize
        when "Broccoli"
          @current_total = @current_total +  1.00
          puts "\nPress RETURN to see you items and your totals:"
          print "> "
          gets.chomp
          display_choices

        when "Cabbage"
          @current_total = @current_total +  2.00
          puts "\nPress RETURN to see you items and your totals:"
          print "> "
          gets.chomp
          display_choices
      
        when "Cauliflower"
          @current_total = @current_total +  1.00

          puts "\nPress RETURN to see you items and your totals:"
          print "> "
          gets.chomp
          display_choices
      
        when "Coleslaw"
          @current_total = @current_total + 2.00

          puts "\nPress RETURN to see you items and your totals:"
          print "> "
          gets.chomp
          display_choices
        else
          puts "invalid input"
          second_side_menu
    end
  end

  def display_choices
    puts "Your choices were:\n- #{@main_dish_choice}\n- #{@side_dish_choice}\n- #{@second_dish_choice}"
    puts "Your total is $#{@current_total}"
  end
end


food = LunchLady.new
food.print_main
