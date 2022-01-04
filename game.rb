require './player'
require './question'

class Game

  attr_accessor :game_over , :player1 , :player2 , :current_player

  def initialize
    self.game_over = false
    self.player1 = Player.new('Player 1')
    self.player2 = Player.new('Player 2')
    self.current_player = self.player1
  end

  def change_current_player
     self.current_player = (self.current_player == self.player1) ? self.player2 : self.player1
   end

  def start
      player = self.current_player
      question = Question.new
      puts question.generate_question
      print '>'
      answer = gets.chomp.to_i
      puts answer

      if (answer == (question.num1 + question.num2))
        puts 'YES! You are correct.'
      else
        player.update_lives
        puts 'Seriously? No!'
      end
      puts "P1: #{self.player1.lives}/3 vs P2: #{self.player2.lives}/3"
      change_current_player
      puts '-----NEW TURN-----'
    end
end
