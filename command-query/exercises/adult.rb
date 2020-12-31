class Adult
  attr_reader :sober
  attr_reader   :number_of_drinks

  def initialize
    @number_of_drinks = 0
    @sober = false
  end

  def consume_an_alcoholic_beverage
    @number_of_drinks += 1
  end

  def sober?
    drunk_test
    @sober
  end

  def drunk_test
    if @number_of_drinks == 0
      @sober = true
      puts "Adult should really be sober right now."
    elsif @number_of_drinks == 1
      @sober = true
      puts "Still sober."
    elsif @number_of_drinks == 2
      @sober = true
      puts "Not drunk yet."
    elsif @number_of_drinks == 3
      @sober = false
      puts "Yeah, OK. The adult is drunk."
    elsif @number_of_drinks > 3
      @sober = false
      puts "The adult doesn't get more sober from drinking more."
    end
  end



end
