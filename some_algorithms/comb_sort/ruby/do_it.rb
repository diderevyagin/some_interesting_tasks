class Array
  COMBO_SORT_GUP_COOF = 1.247

  def comb_sort!(&compare_block)
    compare_block = -> (f, s) { f <=> s } if compare_block.nil?

    gap, changed = self.size, true

    while (gap > 1 || changed)
      gap = (gap/COMBO_SORT_GUP_COOF).to_i if gap > 1

      counter, changed = 0, false

      while (counter + gap) < self.size  do
        if compare_block.(self[counter], self[counter + gap]) == 1
          self[counter], self[counter + gap] = self[counter + gap], self[counter]
          changed = true
        end
        counter += 1
      end
    end

    self
  end

end
