require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    #binding.pry
    collection.push(yield(array[i]))
    i += 1
  end
  return collection
end
#binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
