class Question
  attr_accessor :number_one, :number_two, :operator, :answer
  
  def initialize()
    @number_one = rand(1..20)
    @number_two = rand(1..20)
    operators = ["plus","minus","times","divided by"]
    @operator = operators[rand(0..3)]
    calculateAnswer(); 
  end

  def calculateAnswer
    if self.operator == "plus"
    self.answer =  self.number_one + self.number_two
    end 
    if self.operator == "minus"
      self.answer =  self.number_one - self.number_two
    end
    if self.operator == "divided by"
      self.answer =  self.number_one / self.number_two
    end  
    if self.operator == "times" 
      self.answer =  self.number_one * self.number_two
    end  
    self.answer = self.answer.to_i
  end


end