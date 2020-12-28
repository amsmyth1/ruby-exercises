class Wizard
  attr_reader :name,
              :bearded,
              :root_powers,
              :health

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @root_powers = []
    @health = 3
  end

  def bearded?
    @bearded
  end

  def incantation(chant)
    @root_powers << chant
    "sudo #{chant}"
  end

  def cast
    @health -= 1
    "MAGIC MISSILE"
  end

  def rested?
    if @health <= 0
      false
    else
      true
    end
  end
end
