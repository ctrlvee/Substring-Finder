require 'pry-byebug'

@dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

@main_list = []

def getUserInput
  @string = gets.chomp
end


def find_match
  getUserInput()
  @string.split.each do |substring|
    temp_list = @dictionary.find_all do |dict_word| 
    dict_word.include?(substring)
    
    end
    @main_list.concat(temp_list) 
    binding.pry 
  end
  @main_list
  
end

find_match()