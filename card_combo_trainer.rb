PLAYERS = [:north,:east,:south,:west]
DECLARER = :south
DUMMY = :north

class CardComboTrainer
	def initialize(argv = [])
		if argv.include?("--help") || argv.include?("-h")
			View.help; return
		end
		@close_session = false
		until @close_session do
			hand = Hand.new
			View.display_card_combo(hand)
		end
	end
end

class Hand #Model of a hand
	attr_accessor :north, :south
	def initialize
		puts "please enter the cards in north's hand"
		@north = gets.chomp
		puts "please enter the cards in south's hand"
		@south = gets.chomp
	end

	def parse_cards(user_hand_input)
		user_hand_input.split!(" ").map!(&:symbolize)
		#split on spaces
		#for each, check if it's a key word or a key letter or number 2-10
		#if it's not, check each character
		#if it's a colloquial term, like "doubleton", "third", "stiff", "eight to the AK", parse that
	end
end

module View
	def self.welcome
		puts "Welcome to the Card Combination Trainer!"
		puts "Practice your bridge declarer skills by focusing on"
		puts "the critical card combinations you want to practice"
		puts ""
		puts "Start by entering the cards that are in the North and South hands"
		true
	end

	def self.help
		puts "This is the Card Combination Trainer"
		puts "Developed by C.J. Jameson, 2014"
		puts ""
		puts "Available command-line arguments:"
		puts "--help, -h  display this help file"
	end

	def self.display_card_combo(hand)
		puts "North holds " + hand.north if hand.north
		puts ""
		puts "South holds " + hand.south if hand.south
	end
end

game = CardComboTrainer.new(ARGV)