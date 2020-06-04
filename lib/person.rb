# your code goes here
require 'pry'
class Person 
  @@all = [] 
  
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  
  def initialize(name)
  @name = name 
  @bank_account = 25 
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
    hygiene > 7
  end 
  
  def happy?
    happiness > 7
  end 
  
  def get_paid(salary)
    self.bank_account += salary 
    "all about the benjamins"
  end 
  
  def take_bath
    self.hygiene += 4 
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end 
  
  def work_out  
    self.happiness += 2 
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end 
  
  def call_friend(friend)
    [self, friend].each {|c| c.happiness += 3}
    puts "Hello #{friend.name}! It's #{self.name}. How are you?"
  end 
  
  def start_conversation(person, topic)
    object = [self, person] 
  if topic == "politics"
    object.each {|o| o.happiness -= 2}
    first, second = ["partison", "lobbyist"]
  else topic == "weather"
    object.each {|o| o.happiness += 1} 
    first, second = ["sun","rain"]
    end 
  first, second = ["blah", "blah"]
  puts "blah blah #{first} blah #{second}"
  end 
  
  private 
  
  def name=(name) 
    @name = name 
  end 
# bob = Person.new("Bob")
end 
