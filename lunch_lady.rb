class Main_dish
  def initialize(dish, price)
    @dish = dish
    @price = price
    end

    def print 
      puts "Main dish: #{@dish}- Price #{@price}"
    end
end

meatloaf = Main_dish.new("Meatloaf", 5)
tacos = Main_dish.new("Tacos", 3)
casserole = Main_dish.new("Casseroles", 4)
meatloaf.print


class Side_dish < Main_dish
  def print 
    puts "side dish: #{@dish}- Price #{@price}"
  end
end

beans = Side_dish.new("beans", 4)
beans.print