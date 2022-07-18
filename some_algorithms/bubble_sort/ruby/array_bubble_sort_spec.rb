require './do_it'

describe Array do

  describe "work with bubble_sort" do
    context "bubble_sort" do
      it "correct flow sort" do
        test_array = 128.times.map { rand(1000)}
        expect(test_array.dup.bubble_sort!).to eq(test_array.dup.sort)
      end
    end
  end

end