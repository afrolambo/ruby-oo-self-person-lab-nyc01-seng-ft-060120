# your code goes here
class Person 
  @@all = [] 
  
  attr_accessor :name, :bank, :happiness, :hygiene
  
  def initialize
  @name = name 
  @bank = 25 
  @happiness = 8 
  @hygiene = 8 
  end 

end 
binding.pry