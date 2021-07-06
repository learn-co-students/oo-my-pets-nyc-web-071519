class Dog
  
  attr_reader :name, :species
  attr_accessor :mood, :owner

  @@all = []
  def initialize (name, owner)
    @name = name
    @species = "dog"
    @owner = owner
    @mood = "nervous"
    Dog.all << self
    owner.dogs << self
  end


  def self.all
    @@all
  end


end