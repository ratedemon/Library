class Library
  attr_accessor :books, :orders, :readers, :authors
  def initialize(data)
    @books, @orders, @readers, @authors = data
  end
  def best_reader
    best_readers = @orders.group_by {|el|
      el.reader.name
    }

    return best_readers
  end

  def best_book
    best_books = self.group_books

    best_book = best_books.max_by{|k, v|
      v.length
    }

    return best_book
  end

  def one_of_top_three
    best_books = self.group_books

    filtered_books = []

    best_books.each{|key, val|
      filtered_books.push({book: key, count: val.length})
    }

    # filtered_books.sort{|a,b| a[:count] <=> b[:count]}
    return filtered_books.sort_by{|book|
      book[:count]
    }.reverse[rand(0..2)]
    #
    # puts filtered_books
  end

  def group_books
    return @orders.group_by {|el|
      el.book.title
    }
  end
end