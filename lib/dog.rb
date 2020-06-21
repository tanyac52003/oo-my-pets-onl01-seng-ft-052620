class Dog
  attr_reader :name 
  attr_writer :owner
  attr_accessor :mood 
  
  @@all = []
  
  
    def initialize(name, owner)
     @name = name 
     @owner = owner 
     @mood = "nervous"
     @@all << self 
   end 
   
   def self.all 
     @@all 
   end  
   
   def owner
     @owner
   end 
   
end