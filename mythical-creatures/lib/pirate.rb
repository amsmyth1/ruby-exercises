class Pirate
  attr_reader :name,
              :job,
              :cursed,
              :forgiveness_count,
              :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = cursed
    @forgiveness_count = 3
    @booty = 0
  end

  def cursed?
    if @forgiveness_count <= 0
      @cursed = true
    else
      @cursed = false
    end
  end

  def commit_heinous_act
    @forgiveness_count -= 1
  end

  def rob_ships
    @booty += 100
  end 
end
