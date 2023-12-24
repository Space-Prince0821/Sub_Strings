def substrings(word, dictionary)
    substrings_count = Hash.new(0)
    word = word.downcase

    dictionary.each do |substring|
        start_index = 0

        while start_index = word.index(substring.downcase, start_index)
            substrings_count[substring] += 1
            start_index += 1
        end
    end

    # Return our hash with occurrences
    substrings_count
end

# Example usage:
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)