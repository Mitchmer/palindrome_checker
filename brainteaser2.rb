# - ask user for input of palindrome
#   - option to quit
# - check if palindrome
#   - remove spaces
#   - join
#   - split
require 'pry'

def user_input
  puts "What would you like to input as your palindrome?"
  @input = gets.strip
  checkinput
end

def checkinput
  checkprep = @input.gsub(/[ ]/, '').split(//)
  reversearr = []
  while checkprep.length > 0
    reversearr << checkprep.pop
  end
  binding.pry
end

user_input
