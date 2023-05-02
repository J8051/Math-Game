require "./question.rb"

class Player
  attr_accessor :health, :name

  def initialize(name)
    @health = 3 
    @name = name
  end

  # def decrementHealth
  #   if response != answer
  #    self.health -=1
  #   end 
  # end

  def answerQuestion(question)
      puts "#{self.name}: What does #{question.number_one} #{question.operator} #{question.number_two} equal?"
      response = gets.chomp.to_i
    if response == question.answer
      puts "#{self.name}:Yes you are correct"
    else
      self.health -=1
      # self.decrementHealth 
      puts "#{self.name}:Seriously? NO!"
    end  
  end     
end


