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
    hygiene > 7? 
      true : false
  end 
  
  def happy?
    happiness > 7? 
      true : false
  end 
  
  def get_paid(salary)
    @bank += salary 
    puts "all about the benjamins"
    @bank
  end 
  
  def take_bath
    @hygiene += 4 
    puts "♪ Rub-a-dub just relaxing in the tub ♫"
    if @hygiene > 10 
      @hygiene = 10
    end 
    @hygiene
  end 
  
  def work_out  
    @happiness += 2 
    @hygiene -= 3
    puts "♪ another one bites the dust ♫"
    if @happiness > 10 
      @happiness = 10 
    end 
    @happiness
  end 
  
  def call_friend(friend)
    
  private 
  
  def name=(name) 
    @name = name 
  end 
# bob = Person.new("Bob")
end 
binding.pry