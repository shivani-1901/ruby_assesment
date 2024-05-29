String Calculator
This is a simple String Calculator implemented in Ruby as part of an assessment.

Setup
Ruby Version
Ruby 3.2.2
Rails Version
Rails 7.1.3.3
Dependencies
Bundler 2.5.4
Installation
Clone the repository:
sh
Copy code
git clone git@github.com:shivani-1901/ruby_assesment.git
Install dependencies:
sh
Copy code
bundle install
Usage
You can use the String Calculator in your Ruby code to perform arithmetic operations on comma-separated numbers provided as a string. Here's a basic example:

ruby
Copy code
require './lib/string_calculator'

result = StringCalculator.add("1,2,3")
puts result
Running Tests
This project uses RSpec for testing. You can run the test suite using the following command:

sh
Copy code
rspec
Gemfile
The Gemfile specifies the Ruby and Rails versions along with the RSpec gem for testing.

