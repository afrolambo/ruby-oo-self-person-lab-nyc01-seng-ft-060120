# your code goes here
require 'pry'
class Person 
  @@all = [] 
  
  attr_accessor :name, :bank, :happiness, :hygiene
  
  def initialize(name)
  @name = name 
  @bank = 25 
  @happiness = 8 
  @hygiene = 8 
  end 
  
  def clean?
    @hygiene > 7 ?
      true : false 
  end 
  
  def happy?
    @happiness > 7?
      true : false 
  end 
    

end 
binding.pry