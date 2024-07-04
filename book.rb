class Book
  attr_reader :title, :author, :isbn

  @title
  @author
  @isbn

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

  def to_s
    "Book('#{@title}' by '#{author}' with ISBN: #{isbn})"
  end
end

LIBRARY = {}

def add_book(title, author, isbn)
  if LIBRARY[isbn]
    raise "Book already exists"
  end
  LIBRARY[isbn] = Book.new(title, author, isbn)
end

def remove_book(isbn)
  LIBRARY.delete(isbn)
end

def get_by_isbn(isbn)
  LIBRARY[isbn]
end

def print_library
  LIBRARY.each_value { |book| puts book }
end

add_book("Hajduci", "Branislav Nusic", "9788675580002")
add_book("Ana Karenjina", "Lav Tolstoj", "9788675580003")
add_book("Pop Ćira i pop Spira", "Jovan Sterija Popović", "9788675580004")
print_library
puts "-----------------"
remove_book("9788675580003")
print_library
puts "-----------------"
hajduci = get_by_isbn("9788675580002")
puts hajduci
puts "Title: #{hajduci.title}"
puts "Autor: #{hajduci.author}"
puts "ISBN: #{hajduci.isbn}"
puts "-----------------"