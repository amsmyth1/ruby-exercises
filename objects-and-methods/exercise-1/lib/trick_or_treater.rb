class TrickOrTreater
  attr_reader :costume,
              :bag

  def initialize(costume)
    @costume = costume
    @bag = []
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    !@bag.empty?
  end

  def gets(candy)
    @bag << candy
  end

  def candy_count
    @bag.count
  end

  def eat
    @bag.shift
  end



end
