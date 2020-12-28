class Medusa
  attr_reader :name,
              :statues

  def initialize (name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.count < 3
      statues.push(victim)
      victim.stoned = true
    else
      statues[0].stoned = false
      statues.shift
      statues.push(victim)
      victim.stoned = true
    end
  end
end
