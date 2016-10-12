# Rock, Paper, Scissors Game

# Helper Values
rock = "rock"
paper = "paper"
scissors = "scissors"
valid_move_names = [rock, paper, scissors]
valid_move_ints = [1, 2, 3]
valid_move_char = ["r", "p", "s"]
num_wins = 0
num_losses = 0
num_ties = 0
quit_options = ["quit", "q", "e", "exit"]

#------ Game Code -------
#------------------------
puts "Welcome To Rock, Paper, Scissors"
puts "Type <quit> to end at any time"

while true
  puts
  puts "Your move: rock(1), paper(2) or scissors(3)?"

  valid_user_move = false
  until valid_user_move == true
    user_move = gets.chomp

    if quit_options.include? user_move.downcase
      puts "Good Bye"
      exit
    end

    if valid_move_names.include?  user_move.to_s.downcase
      valid_user_move = true
    elsif valid_move_ints.include? user_move.to_i
      valid_user_move = true
    elsif valid_move_char.include? user_move.to_s.downcase
      valid_user_move = true
    else
      valid_user_move = false
    end

    if !valid_user_move
      puts "Invalid selection: " + user_move.to_s
      puts "Please select a choice from: rock(1), paper(2) or scissors(3)"
    end

  end

  if valid_move_names.include?  user_move.to_s.downcase
    user_move = user_move.to_s.downcase
  elsif valid_move_ints.include? user_move.to_i
    user_move = valid_move_names[user_move.to_i - 1]
  elsif valid_move_char.include? user_move.to_s.downcase
    case user_move.to_s.downcase
    when "r"
      user_move = rock
    when "p"
      user_move = paper
    when "s"
      user_move = scissors
    else abort("Unknown user move selection")
    end
  else
    return abort("Unknown user move selection")
  end

  puts "You've selected: " + user_move
  computer_move = valid_move_names[rand(3)]
  puts "The computer selected: " + computer_move

  ## Comparison Logic
  if user_move == computer_move
    puts "It's a tie!"
    num_ties = num_ties + 1
  else
    case user_move
    when rock
      case computer_move
      when paper
        puts "You lose!"
        num_losses = num_losses + 1
      when scissors
        puts "You win!"
        num_wins = num_wins + 1
      else
        abort("Unknown computer move found. Ending program")
      end
    when paper
      case computer_move
      when scissors
        puts "You lose!"
        num_losses = num_losses + 1
      when rock
        puts "You win!"
        num_wins = num_wins + 1
      else
        abort("Unknown computer move found. Ending program")
      end
    when scissors
      case computer_move
      when rock
        puts "You lose!"
        num_losses = num_losses + 1
      when paper
        puts "You win!"
        num_wins = num_wins + 1
      else
        abort("Unknown computer move found. Ending program")
      end
    end
  end
  puts
  puts "Current Record"
  puts "Wins: " + num_wins.to_s()
  puts "Losses: " + num_losses.to_s()
  puts "Ties: " + num_ties.to_s()
end
