require './do_it'

describe Array do

  describe "work with comb_sort" do
    context "comb_sort" do
      it "correct flow sort" do
        test_array = 128.times.map { rand(1000)}
        expect(test_array.dup.comb_sort!).to eq(test_array.dup.sort)
      end
    end
  end

end