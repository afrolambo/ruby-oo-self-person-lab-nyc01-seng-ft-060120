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
    if @hygiene > 7 ?
      true : false 
    end 
  end 
  
  def happy?
    if @happiness > 7?
      true : false 
    

end 
binding.pry