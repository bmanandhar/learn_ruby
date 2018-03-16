#This code has been written to cover the bonus test-driving
def translate(str)

    vowels = %w(a A e E i I o O u U)
    str.split(" ").reduce([]) { |words, word| #breaks the multiword string into an array of words
        split_word = word.chars #splits characters of word and forms array

    if !vowels.include? word[0] #checks if the initial character of word is not a vowel
#Code below this line is for bonus test-driving
        if split_word[0].upcase.include? split_word[0] #checks if word is a capitalized word
            split_word[0] = split_word[0].downcase #if capitalized word, initial character turned into lower case that has to be shifted in
            i = 1
            while i < 4 #check for vowels upto index 3, like the word 'three'
                if vowels.include? split_word[i]
                    split_word[i] = split_word[i].upcase
                    i = 3 #breaks the loop when it finds a vowel
                end
                i += 1
            end
        end
#Code above this line is for bonus test-driving
        n = split_word.find_index { |x| vowels.include? x }
        n += 1 unless split_word[n-1..n].join("") != "qu"
        split_word.push(split_word.shift(n))[1..-1]

    end

    words << split_word.insert(-1, "ay").join("")
    }.join(" ")
end
puts translate('Apple banana Three Carrot Quick Five')
#This code has been written to cover the bonus test-driving
