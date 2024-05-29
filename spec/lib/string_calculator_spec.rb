require 'string_calculator'

RSpec.describe StringCalculator, "#add" do
  context "with an empty string" do
    it "returns 0" do
      expect(StringCalculator.add("")).to eq(0)
    end
  end

  context "with a single number" do
    it "returns the number itself" do
      expect(StringCalculator.add("1")).to eq(1)
    end
  end

  context "with two numbers" do
    it "returns the sum of the numbers" do
      expect(StringCalculator.add("1,2")).to eq(3)
    end
  end

  context "with multiple numbers" do
    it "returns the sum of all numbers" do
      expect(StringCalculator.add("1,2,3")).to eq(6)
    end
  end

  context "with new lines between numbers" do
    it "returns the sum of all numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
  end

  context "with a different delimiter" do
    it "returns the sum of all numbers" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
  end

  context "with negative numbers" do
    it "raises an exception with a message" do
      expect { StringCalculator.add("1,-2") }.to raise_error("negative numbers not allowed: -2")
    end

    it "raises an exception with all negative numbers in the message" do
      expect { StringCalculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed: -2, -3")
    end
  end
end
