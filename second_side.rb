class SecondSide
  def  initialize(dish, price)
    @dish = dish
    @price = price
  end

  def info
    return "#{@dish} - $#{@price}"
  end
 
end