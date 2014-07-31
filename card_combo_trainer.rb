class CardComboTrainer
	attr_reader :welcomed
	def initialize(user_selections = [])
		@welcomed = false
		welcome
	end

	def welcome
		puts "Welcome to the Card Combination Trainer!"
		puts "Practice your bridge declarer skills by focusing on"
		puts "the critical card combinations you want to practice"
		@welcomed = true
	end
end

game = CardComboTrainer.new(ARGV)