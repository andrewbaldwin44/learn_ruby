class Book
  attr_accessor :title

  def title
    conjunctions = %w[a an and in of the ]
    @title.capitalize.split(" ").map{ |e|
        if conjunctions.include? e
          e
        else
          e.capitalize
        end
      }.join(" ")
  end
end
