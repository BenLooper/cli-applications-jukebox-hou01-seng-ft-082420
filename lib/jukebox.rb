# Add your code here
def say_hello(name)
  "Hi #{name}"
end 

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you chooe a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song,index|
    song_num = (index + 1).to_s
    puts song_num + ". " + song
  end 
end 

def play(songs)
  puts "Please enter a song name or numer:"
  choice = gets.strip
  if choice.between?(1,9)
    puts "Playing #{choice}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
  break 
end 

def run(songs)
  while true 
    puts "Please enter a command:"
    command = gets.strip
    action = case command 
      when 'help'
        help
      when 'list'
        list(songs)
      when 'play'
        play(songs)
      when 'exit'
        exit_jukebox
      end 
    end 
  end 
    
  
    
    
    
    
    