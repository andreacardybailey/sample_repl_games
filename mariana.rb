# My Project

# ---------------- methods and global variables----------#
$my_wallet = 0
#  Adds commas to long numbers
#  Outputs a String 
def format_number(number)
  number.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
end

def first_question_feedback(option)
  case option
    when "yes"
      puts "\nWell let's get started! But I don't promise anything...

      This is your wallet 👝, everytime you answer correctly you earn $200,000 💵

      and everytime your answer is incorrect you lose $100,000 💸"
      ask_second_question
    when "not today"
      puts "\nReally?! Well you can try tomorrow 🤷🏻‍♀️" 
      exit 
  end
end

def ask_second_question
  puts "\n\nWhat year was the Independence of the United States?"
  puts "\nOptions: 1530, 1776, 1886\n\n"
end

def second_question_feedback(option)
  case option
  when "1530"
      puts "\n1530? Were humans around that year? Your 👝 is empty"
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
      ask_third_question
  when "1776"
      puts "\nWooooow. Are you a History teacher?? That's correct! you earn 200,000 💵"
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}" 
      ask_third_question
  when "1886"
      puts "\nThat's almost correct, it was 10 years earlier...Your 👝 is empty"
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
      ask_third_question
  end
end

def ask_third_question
  puts "\n\nThat was easy right? Now let's see what you got! Which movie featured the touching romantic quote 'You had me at hello' ?"
  puts "\nOptions: Jerry Maguire, Down With Love, The Graduate\n\n"
end

def third_question_feedback(option)
  case option
  when "Jerry Maguire"
      puts "\nThat's correct! You must be aromantic 😍...you earn 200,000 💵" 
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}" 
      ask_fourth_question
  when "Down With Love"
      puts "\nThat is incorrect...I supose you like other genres 🤷🏻‍♀️  "
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
      ask_fourth_question
  when "The Graduate"
      puts "\nThat is incorrect...I guess this is too romantic for you 🤷🏻‍♀️  "
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
      ask_fourth_question
  end
end

def ask_fourth_question
  puts "\n\nHow many countries are in the world? 🌎"
  puts "\nOptions: 295, 150, 195\n\n"
end

def fourth_question_feedback(option)
  case option
  when "295"
      puts "\nYou just discovered 100 countries!! unfortunately that's incorrect..." 
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
      ask_fifth_question
  when "150"
      puts "\nThat's so close! but you forgot about the citizens of the rest 45 countries..."
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
      ask_fifth_question
  when "195"
      puts "\nThat's correct! are you related to Christopher Columbus?...just wondering 🤷🏻‍♀️  you earn 200,000 💵"
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}"
      ask_fifth_question 
  end
end

def ask_fifth_question
  puts "\n\nWhich of these zodiac signs is not represented by an animal that grows horns? "
  puts "\nOptions: Capricorn, Aries, Gemini\n\n"
end

def fifth_question_feedback(option)
  case option
  when "Capricorn"
      puts "\nmmm...last time I checked goats 🐐 have horns..." 
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
      ask_sixth_question
  when "Aries"
      puts "\nAries is represented by ♈️  wich resembles rams 🐏 horns..."
      $my_wallet += 0
      if $my_wallet > 0
        $my_wallet-=100000
      end
      puts "\n👝 #{format_number($my_wallet)}" 
      ask_sixth_question
  when "Gemini"
      puts "\nThis is correct! you should become an astrologer 🌌 you earn 200,000 💵"
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}" 
      ask_sixth_question
  end
end

def ask_sixth_question
  puts "\n\nThis is your last opportunity to be a millionare...Which came first the egg 🥚 or the chicken 🐔?"
  puts "\nOptions: The chicken, The egg\n\n"
end

def sixth_question_feedback(option)
  case option
  when "The chicken"
      puts "\nNo one truly knows this 🤷🏻‍♀️  so you earn 200,000 💵"
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}" 
      the_end
  when "The egg"
      puts "\nNo one truly knows this 🤷🏻‍♀️  so you earn 200,000 💵"
      $my_wallet +=200000
      puts "\n👝 #{format_number($my_wallet)}" 
      the_end
  end
end

def the_end
  puts "\n\nWooow that was amazing! you have the spirit of a millionare...
  
  you have #{format_number($my_wallet)} in your wallet 👝 !!! 🎉🎉🎉
  
  but unfortunately I don't have the money 🙍🏻 soooo...
  
  Goodbay! 🏃🏻‍♀️ "
  # exit
end

#------------------Running The Game----------------#

puts "\nWelcome to my game! 😆

Do you want to be a millionare? 💰💰

Options: yes, not today\n\n"

user_option = gets.chomp

first_question_feedback(user_option)

user_second_option = gets.chomp

second_question_feedback(user_second_option)

user_third_option = gets.chomp

third_question_feedback(user_third_option)

user_fourth_option = gets.chomp

fourth_question_feedback(user_fourth_option)

user_fifth_option = gets.chomp

fifth_question_feedback(user_fifth_option)

user_sixth_option = gets.chomp

sixth_question_feedback(user_sixth_option)