class StringCalculator
    def self.add(numbers)
      return 0 if numbers.empty?
  
      delimiter = ","
      if numbers.start_with?("//")
        parts = numbers.split("\n", 2)
        delimiter = Regexp.escape(parts[0][2..-1])
        numbers = parts[1]
      end
  
      numbers = numbers.gsub("\n", delimiter)
      num_array = numbers.split(/#{delimiter}/).map(&:to_i)
  
      negatives = num_array.select { |n| n < 0 }
      raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
  
      num_array.sum
    end
end
  