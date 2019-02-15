require 'pry'
class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species
  attr_writer :pets
  
  def initialize(name)
    @name = name
    @@all << self 
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length 
  end 
  
  def self.reset_all
    @@all.clear 
  end
  
  def say_species
    "I am a #{@species}."
  end 
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end 
    
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end 
  
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end 
  
  def sell_pets
    @pets.each  do |pet_type, pets_list|
      pets_list.each |pet, attributes|
        if attribute == @mood
          @mood = "nervous"
          binding.pry
        end 
      end
    end 
  end 
  
end