def my_method
   puts "reached the top"
   yield
   puts "reached the bottom"
end

my_method { puts "reached yield" }

########################

puts "\n\n"
def my_map(array)
   new_array = []

   for element in array
      new_array.push yield element
   end

   new_array
end

my_map([1, 2, 3]) do |number|
   puts number * 2
end

########################

class Fixnum
   def to_proc
      Proc.new do |obj, *args|
         obj % self == 0
      end
   end
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select(&3)
puts numbers
