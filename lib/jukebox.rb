require 'pry'

def help 
  puts "I accept the following commands: "
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
    puts "Please enter a song name or number:"
    usr = gets.strip
    h = {}
    songs.each.with_index(1) do |song, i|
      h.merge!("#{i}" => "#{song}")
    end
    h.find { |i, song|
        puts "Playing " + song if usr == i || usr == song }
    if h.any? { |i, song| usr == i || usr == song } == false
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  usr = gets.strip
  while usr != "exit" do 
      if usr == "list"
         list(songs)
      elsif usr == "play"
         play(songs)
      elsif usr == "help"
         help 
      end 
    puts "Please enter a command:"
    usr = gets.strip
  end
  if usr == "exit"
    exit_jukebox 
  end
end