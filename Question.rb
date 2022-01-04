class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def generate_question
    puts "What does #{@num1} plus #{@num2} equal?"
  end

end
