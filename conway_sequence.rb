class ConwaySequence
  def initialize r
    @r = r
  end

  def display_line l
    output = ''
    return "#{@r}" if l == 1
    output = [1, @r]
    return output.join(' ') if l == 2

    (3..l).each do
      p_num = 0
      p_count = 0
      next_row = []

      output.each_with_index do |x, i|
        if p_num == x
          p_count += 1
        else
          p_num = x
          p_count = 1
        end
        next_num = output[i + 1]
        if x != next_num
          next_row << p_count
          next_row << p_num
        end
      end
      output = next_row
    end
    output.join(' ')
  end
end
