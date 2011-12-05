class Word < String
  def allcapitals?
      self == self.upcase
  end
end

w=Word.new("yummie")


puts w.allcapitals?
