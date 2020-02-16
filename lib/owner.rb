class Owner
  attr_reader :name, :species
  attr_accessor :cat, :dog 
 
  @@all = []
 
  def initialize(name)
    @name = name 
    @@all << self 
  end 
 
  def species(species = "human")
    @species = species
  end 
  
  def say_species
    "I am a #{species}."
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count
    @@all.count
  end 
  
  def self.reset_all 
    @@all.clear 
  end 
  
  def cats 
    Cat.all.select do |cat| 
      cat.owner == self 
    end 
  end 
  
  def dogs 
    Dog.all.select do |dog|
      dog.owner == self 
    end 
  end 
  
  def buy_cat(cat_name)
    cat = Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
  end 
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end 
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end 
  
  def sell_pets
    self.dogs.each {|dog| dog.mood = "nervous"}
    self.cats.each {|cat| cat.mood = "nervous"}
    self.dogs.each {|dog| dog.owner = nil}
    self.cats.each {|cat| cat.owner = nil}
  end 
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
  
end