obj = Object.new

def obj.talk
  puts "I am an object."
  puts "(Do you object?)"
end

def obj.c2f(c)
  c * 9.0 / 5 + 32
end

def obj.one_argument(x)
  puts "I require one and only one argument."
end

def obj.multi_args(*x)
  puts "I can take zero or more arguments."
end

def obj.two_or_more(a,b,*c)
  puts "I require 2 or more arguments. My arguments are:"
  p a, b, c
end

obj.one_argument(1)
obj.multi_args
obj.two_or_more(1, 2, 3, 4, 5)


=begin

obj.talk
puts obj.c2f(100)

puts "The id of obj is #{obj.object_id}."
str = "Strings are objects too, and this is a string."
puts "The id of the string object str is #{str.object_id}."
puts "And the id of the integer 100 is #{100.object_id}."

a = Object.new
b = a
puts "a's id is #{a.object_id} and b's id is #{b.object_id}."

string_1 = "Hello"
string_2 = "Hello"
puts "string_1's id is #{string_1.object_id}, and string_2's id is #{string_2.object_id}."

=end
