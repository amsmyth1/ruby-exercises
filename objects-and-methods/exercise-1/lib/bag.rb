class Bag
  attr_accessor :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def add_candy(candy)
    @candies << candy
  end

  def count
    @candies.length
  end

  def candy_types_in_bag
    candy_types = []
    @candies.each do |candy|
      candy_types << candy.type
    end
    candy_types
  end

  def contains?(candy)
    candy_types_in_bag.include?(candy)
  end
end
