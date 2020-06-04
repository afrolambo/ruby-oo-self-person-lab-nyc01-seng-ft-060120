# your code goes here
require 'pry'
class Person 
  @@all = [] 
  
  attr_accessor :bank
  attr_reader :name, :happiness, :hygiene
  
  def initialize(name)
  @name = name 
  @bank = 25 
  @happiness = 8 
  @hygiene = 8 
  end 
  
  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
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
    @hygiene
  end 
  
  def work_out  
    @happiness += 2 
    @hygiene -= 3
    puts "♪ another one bites the dust ♫"
    @happiness
  end 
  
  def call_friend(friend)
    @happiness += 3 
    friend.happiness += 3
    puts "Hello #{friend.name}! It's #{self.name}. How are you?"
  end 
  private 
  
  def name=(name) 
    @name = name 
  end 
# bob = Person.new("Bob")
end 
binding.pry