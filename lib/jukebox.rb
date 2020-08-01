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
  songs.each_with_index do |song|
    song_num = (song.index + 1).to_s
    puts song_num + ". " + song
  end 
end 
  