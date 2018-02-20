# Modified by Andrea
# category = [
#   "places", "animals", "food", "colors"
# ]
# places = [
#   "new york", "south africa", "egypt", "france", "italy"
# ]

# animals = [
#   "mouse", "lion", "flamingo", "panda", "eagle"
# ]

# food = [
#   "ice cream", "cheese", "chocolate", "coffee", "pasta"
# ]

# colors = [
#   "green", "red", "blue", "yellow", "orange"
# ]

$places_hash = {
  "new york" => "Apple - Liberty - Yellow Cab - Food Trucks",
  "italy" => "Empire - Architecture - Pasta - Pizza",
  "south africa" => "Safari - Wild Animals - Cape - Charlize Theron",
  "egypt" => "Camels - Ancient - Falafel - Temples",
  "france" => "Pastry - Fashion - Elegance - 7 Wonders"
}

$animals_hash = {
  "mouse" => "Gray - Hairless - Small - Tail",
  "lion" => "Africa - King - Hairy - Wild",
  "flamingo" => "Pink - America - Wings - One Leg",
  "panda" => "Black & White - Chinese - Bamboo - Fat",
  "eagle" => "Freedom - Hunter - Strong Vision - Feathers"
}

$food_hash = {
  "ice_cream" => "Cold - Sweet - Melty - Different Flavors",
  "cheese" => "Cow - Dutch - Fatty - Delicious",
  "chocolate" => "Switzerland - Milky - Happines - Bar",
  "coffee" => "Cuba - Strong - Morning - Energy",
  "pasta" => "Italy - Flour - Shapes - Sauce"
}

$colors_hash = {
  "green" => "Tree - Apple - Frog - Lettuce",
  "red" => "Heart - Rose - Blood - Strawbery",
  "blue" => "Sky - Beach - Smurfs - Twitter",
  "yellow" => "Banana - Lemon - Sun - SpongeBob",
  "orange" => "Carrot - Appricot - Halloween - Fire"
}

$score = 0


def intro 
  <<~EOF
Welcome to Guess What Game!! 

In this game you will have to guess the word using the 4 hints avilable for each word

You could choose one of 4 categories

categories: Places, Animals, Food, and Colors

Lets get started!!!

Which category you want to start with? 
EOF
end

puts intro

def ask_questions(category)
  case category
  when "places"
    hash_name = $places_hash 
    #  Modified by Andrea
    singular = "place"
  when "animals"
    hash_name = $animals_hash
    #  Modified by Andrea
    singular = "animal"
  when "food"
    hash_name = $food_hash
    #  Modified by Andrea
    singular = "food"
  when "colors"
    hash_name = $colors_hash
    #  Modified by Andrea
    singular = "color"
  end

  hash_name.each do |key, value|
    #  Modified by Andrea
    puts "What #{singular} is this?: #{value}"
    response = gets.chomp.downcase
    if response == key 
      puts "correct"
    else 
      puts "wrong!"
    end
  end
end

category = gets.chomp.downcase

ask_questions(category)

def restart_question
  <<~EOF
    
  Would you like to play again?
  Options: yes, no
  EOF
  end
  # Returns true or false
  # Indicates whether the user wants to restart their game
def restart_game?(input)
  if input == "yes"
    true
  else
    false
  end
end

puts restart_question
restart_input = gets.chomp

if restart_game?(restart_input)
  puts intro
  category = gets.chomp.downcase
  ask_questions(category) 
else
  puts "\nThank you for playing. Bye!"
end