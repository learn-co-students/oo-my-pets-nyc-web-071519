class Cat
  
  attr_reader :name, :species
  attr_accessor :mood, :owner

  @@all = []
  def initialize (name, owner)
    @name = name
    @species = "cat"
    @owner = owner
    @mood = "nervous"
    Cat.all << self
    owner.cats << self
  end


  def self.all
    @@all
  end


end