# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.strip
#
# puts say_hello(users_name)
require "pry"
def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end



def list(songs)
songs.each_with_index { |songs, index|
puts "#{index+1}. #{songs}"}

end


def play(songs)

message = "Please enter a song name or number:"
user_response = gets.strip
puts message

#binding.pry
  if user_response.to_i < songs.length && user_response.to_i >= 1
puts "Playing #{ songs[user_response.to_i - 1]}"
elsif songs.include?( user_response )
  puts "Playing #{songs.find{|song| song === user_response}}"
else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_answer = gets.strip
  #binding.pry

if user_answer === 'help'
  help
elsif user_answer === 'list'
  list(songs)
elsif user_answer === 'play'
 play(songs)

elsif user_answer === 'exit'
  exit_jukebox

end
end
