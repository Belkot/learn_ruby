class Book

  NO_CAPITALIZE_WORDS = %w( the a an and in of )
  
  attr_writer :title

  def title
    @title.capitalize.split
      .map { |e| NO_CAPITALIZE_WORDS.include?(e) ? e : e.capitalize }
        .join(' ')
  end
end
