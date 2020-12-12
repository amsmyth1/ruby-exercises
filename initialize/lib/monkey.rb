class Monkey
  attr_reader :information

  def initialize (information = [name, type, favorite_food])
    @information = information
  end


  def name
    @information[0]
  end

  def type
    @information[1]
  end

  def favorite_food
    @information[2]
  end
end
