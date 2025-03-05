dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own",
              "part", "partner", "sit"]

def substrings(str, dictionary)
  input = str.downcase.gsub(/[^a-z\s]/, "").split
  result = {}

  dictionary.each do |arr|
    input.each do |word|
      result[arr] = result.fetch(arr, 0) + 1 if word.include?(arr)
    end
  end
  result
end
substrings("Howdy partner, sit down! How's it going?", dictionary)
