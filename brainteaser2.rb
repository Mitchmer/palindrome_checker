def user_input
  puts "What would you like to input as your palindrome?"
  input = gets.strip
  checkinput(input)
end

def checkinput(word)
  checkprep = word.gsub(/[ ]/, '').split(//)
  initialarr = checkprep.map {|x| x}
  reversearr = []
  while checkprep.length > 0
    reversearr << checkprep.pop
  end
  if initialarr == reversearr
    puts "What up! Nice pallindrome"
  else
    puts "That's definitely not a pallindrome. Try again."
  end
  puts "Would you like to try again? (y/n)"
  choice = gets.strip
  if choice == 'y'
    user_input
  else
    exit
  end
end

user_input
