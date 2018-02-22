# ----------------Methods-----------------#

# Prints out welcome text
def print_welcome_text
  puts <<~EOF
  Welcome to my game! I am going to pack you a lunch. 

  Lets get started.

  EOF
end

# Ask what kind of sandwich
def ask_sandwich_question
  puts <<~EOF
  What type of sandwich would you like?

  Options: turkey, ham, pb&j

  EOF
end 

# Provide feedback about user's sandwich choice
def give_sandwich_feedback(sandwich_choice)
  puts "\n"
  case sandwich_choice
  when "turkey"
    puts "Turkey sandwiches are awesome!"
  when "ham"
    puts "Ham for you."
  when "pb&j"
    puts "PB&J rocks!"
  else
    puts "I guess you don't want a sandwich."
  end 
end

#-----------------Run game---------------------#

print_welcome_text
ask_sandwich_question

sandwich = gets.chomp.downcase
give_sandwich_feedback(sandwich)


puts "\nWhat would you like for your snack?"
puts "Options: cheetos, apples, doritos\n\n"

snack = gets.chomp.downcase
puts"\n"

case snack
when "cheetos"
  puts "Ch..ch..ch.. cheetos!"
when "apples" 
  puts "Apples are a healthy snack :)"
when "doritos"
  puts "Doritos are my favorite"
else 
  "That wasn't one of the choices. No snack for you!"
end

puts "\n--------------------------"
puts "Your lunch is ready!"

puts "\nToday you will have:\n\n"
puts "- A #{sandwich} sandwich. 🍔"
puts "- A bag of #{snack}. 🍴"

puts "\n...and a free ice cream for playing the game. 🍦"
puts "\nThank you for playing. Bye."

