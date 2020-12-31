class Ogre
  attr_reader :name,
              :home,
              :swings,
              :encounter_counter

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    @encounter_counter += 1
    if human.encounter_counter % 3 == 0
      human.notices_ogre = true
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1
    hit_human(human)
  end

  def hit_human(human)
    if @swings % 2 == 0
      human.knocked_out = true
    end
  end

  def apologize(human)
    human.knocked_out = false 
  end

end
