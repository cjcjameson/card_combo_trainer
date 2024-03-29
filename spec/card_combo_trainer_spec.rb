require 'rspec'
require_relative '../card_combo_trainer'

describe Hand do
	context "#parse_cards" do
		it "returns the words as symbols" do
			test_hand = Hand.new
			test_input = "Ace King 9"
			test_output = test_hand.parse_cards(test_input)
			expect(test_output[0]).to eq(:ace)
		end
	end
end