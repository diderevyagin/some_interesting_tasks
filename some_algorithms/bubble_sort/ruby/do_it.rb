class Array
  def bubble_sort!(&compare_block)
    compare_block = -> (f, s) { f <=> s } if compare_block.nil?

    begin
      stop_continue_proc = true

      (self.length - 1).times do |elem|
        if compare_block.(self[elem], self[elem + 1]) == 1
          self[elem], self[elem+1] = self[elem+1], self[elem]
          stop_continue_proc = false
        end
      end
    end until stop_continue_proc

    self
  end
end
