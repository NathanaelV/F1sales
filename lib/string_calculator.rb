class StringCalculator
  def self.add(string)
    if string.empty?
      0
    else
      numbers = string.split(',')
      numbers.map! { |n| n.to_i }
      numbers.sum
    end
  end
end
