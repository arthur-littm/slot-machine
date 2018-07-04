require_relative '../slot_machine'
describe SlotMachine do
  describe "#score" do
    it "returns 0 for three different symbols" do
      slot_machine = SlotMachine.new
      score = slot_machine.score([ "joker", "star", "bell" ])
      expect(score).to eq(0)
    end
    it "returns 40 for three star symbols" do
      slot_machine = SlotMachine.new
      score = slot_machine.score([ "star", "star", "star" ])
      expect(score).to eq(40)
    end
    it "returns 10 for two seven and one joker" do
      slot_machine = SlotMachine.new
      score = slot_machine.score([ "seven", "seven", "joker" ])
      expect(score).to eq(10)
    end


    # TODO: next possible scenarios

  end
end

# Possible scenarios:
# - star star star     => 40
# - seven seven joker   => 10
