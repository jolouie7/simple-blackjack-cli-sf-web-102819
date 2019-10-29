def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11).floor()
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
  num
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp()
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
end

def hit?(num)
  prompt_user
  user_input = get_user_input
  if user_input == 's'
    return num
  elsif user_input == 'h'
    return num += deal_card
  else
    invalid_command
    prompt_user
    user_input = get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?
  
  while display_card_total <= 21
    hit?
    display_card_total
  end
  end_game
end
    
