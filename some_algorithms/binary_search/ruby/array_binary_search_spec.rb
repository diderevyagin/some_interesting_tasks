require './do_it'

describe Array do

  describe "work with Binary search" do
    let(:test_array) { 1024.times.map { rand(10000)}.uniq.sort }

    context "Binary search" do
      it "correct search flow, first pos" do
        expect(binary_search(test_array, test_array.first)).to eq(0)
      end

      it "correct search flow, last pos" do
        expect(binary_search(test_array, test_array.last)).to eq(test_array.size - 1)
      end

      it "correct search flow, great than right" do
        expect(binary_search(test_array, test_array.last + 1)).to eq(nil)
      end

      it "correct search flow, less than left" do
        expect(binary_search(test_array, test_array.first - 1)).to eq(nil)
      end

      it "check by external find flow" do
        rnd_elem = test_array[rand(test_array.size)]

        expect(binary_search(test_array, rnd_elem)).to eq(test_array.find_index {|e| e == rnd_elem})
      end
    end
  end

end