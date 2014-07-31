class CardComboTrainer
	attr_reader :welcomed
	def initialize(argv = [])
		@welcomed = false
		if argv.include?("--help") || argv.include?("-h")
			View.help;	return
		end
		@welcomed = View.welcome
	end	
end

class View
	def self.welcome
		puts "Welcome to the Card Combination Trainer!"
		puts "Practice your bridge declarer skills by focusing on"
		puts "the critical card combinations you want to practice"
		true
	end

	def self.help
		puts "This is the Card Combination Trainer"
		puts "Developed by C.J. Jameson, 2014"
		puts ""
		puts "Available command-line arguments:"
		puts "--help, -h  display this help file"
	end
end

game = CardComboTrainer.new(ARGV)