class CardComboTrainer
	attr_reader :welcomed
	def initialize(argv = [])
		@welcomed = false
		if argv.include?("--help") || argv.include?("-h")
			help;	return
		end
		welcome
	end

	def welcome
		puts "Welcome to the Card Combination Trainer!"
		puts "Practice your bridge declarer skills by focusing on"
		puts "the critical card combinations you want to practice"
		@welcomed = true
	end

	def help
		puts "Trying to help you here"
	end
end

game = CardComboTrainer.new(ARGV)