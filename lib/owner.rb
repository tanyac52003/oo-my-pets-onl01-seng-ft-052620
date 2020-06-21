class Owner
    attr_accessor :dog, :cat, :mood 
    attr_reader  :name, :species 
    
   
    @@all = []
    @@pets = {:dogs => [], :cats => []}
   
   def initialize(name)
     @name = name
     @owner = owner
     @species = "human" 
     @@all << self 
   end 
   
   def owner
     @owner    
   end 
  
   def species 
     @species 
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
   
   def buy_cat(name)
     @@pets[:cats] << Cat.new(name,self)
     
   end 
   
   def buy_dog(name)
     @@pets[:dogs] << Dog.new(name,self)
   end 
   
   def walk_dogs
      @mood == "happy"
   end 
   
   def feed_cats
     
   end 
   
   def sell_pets
    
   end 
   
   def list_pets
     "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
   end 
   
end








