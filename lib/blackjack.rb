def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
    deal_card
    deal_card
    sum = deal_card + deal_card
    puts "Your cards add up to #{sum}"
    return sum

end

def hit?(number)
  prompt_user
  if get_user_input == 'h'
  number += deal_card
end
 return number
 

end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner(card_total)
  welcome
  initial_round
  until (card_total > 21)
  hit?(card_total)
  display_card_total(card_total)
end
  end_game(card_total)
end
    
