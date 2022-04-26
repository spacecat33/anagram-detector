# Your code goes here!
class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        new_array = []
        array.each do |possible_anagram|
            new_array << possible_anagram if possible_anagram.split("").sort == @word.split("").sort
        end
        new_array
    end

    #or
    # def match(array)
    #    array.select {|x| x.split("").sort == word.split("").sort}
    # end 

end

#Note: not sure how to factor in #%w(some words) into the solution.