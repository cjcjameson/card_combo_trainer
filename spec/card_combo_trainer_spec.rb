require 'rspec'
require_relative '../card_combo_trainer'

describe CardComboTrainer do
	context "#welcome" do
		it "sets a welcome flag to true" do
			expect(CardComboTrainer.new.welcomed).to be true
		end
	end
end