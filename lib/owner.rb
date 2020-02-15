class Owner
  attr_reader :name, :species
  attr_accessor :cat
 
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
    self.Cat.all 
  end 
  
end