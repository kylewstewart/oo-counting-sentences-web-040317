require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    count = 0
    count_array = self.split(' ')
    count_array.each do |word|
      case word[-1]
      when "."
        count += 1
      when "!"
        count += 1
      when "?"
        count += 1
      end
    end
    count
  end

end
