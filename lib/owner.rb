class Owner
  
  attr_reader :name, :species
  attr_accessor :dogs, :cats

  @@all = []
  def initialize (name, species = "human")
    @name = name
    @species = species
    @cats = []
    @dogs = []
    Owner.all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    Owner.all.length
  end

  def self.reset_all
    Owner.all.clear
  end

  def buy_dog (dog)
    Dog.new(dog, self)
  end

  def buy_cat (cat)
    Cat.new(cat, self)
  end

  def change_all_happiness(pets, mood)
    pets.map{|pets| pets.mood = mood}
  end


  def walk_dogs
    change_all_happiness(dogs, "happy")
  end

  def feed_cats
    change_all_happiness(cats, "happy")
  end

  def sell_pets
    change_all_happiness(dogs, "nervous")
    change_all_happiness(cats, "nervous")
    dogs.map{|dog| dog.owner = nil}
    cats.map{|cat| cat.owner = nil}
    dogs.clear
    cats.clear
  end

  def list_pets
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end





end