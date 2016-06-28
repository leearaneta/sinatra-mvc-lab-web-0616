class PigLatinizer
  def piglatinize(string)
    letters = ""
    letters += string.slice!(0) until string.slice(0).scan(/[^aeiou]/i).count == 0
    letters == "" ? new_string = string + "way" : new_string = string + letters + "ay"
  end

  def to_pig_latin(string)
    array = string.split(" ")
    array.map {|word| piglatinize(word)}.join(" ")
  end
end
