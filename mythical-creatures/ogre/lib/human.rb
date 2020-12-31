class Human
  attr_reader   :name
  attr_accessor   :knocked_out,
                  :notices_ogre,
                  :encounter_counter

  def initialize (name = "Jane")
    @name = name
    @knocked_out = false
    @notices_ogre = false
    @encounter_counter = 0
  end

  def knocked_out?
    @knocked_out
  end

  def notices_ogre?
    @notices_ogre
  end

  def encounter_counter
    @encounter_counter
  end

end
