require "pry"
## What is an ARRAY?
# An array is an ordered list of elements (such as: numbers, strings, other arrays, etc)

# Making an Array
my_array = ["hey there", "everyone", "howdy", "neighbor"]

# Accessing  an Item in the Array
my_array[0] #=> "hey there"
my_array[1] #=> "everyone"

## What if I want to change the array?
# The following are DESTRUCTIVE ARRAY METHODS

# change an element in the array:
my_array[0] = "hi"
# add an item to the end of the array
my_array.append("Flanders")
my_array.push("Flanders")
my_array << "Flanders"
# binding.pry


# add an item to the beginning of the array
my_array.insert(0, "Hello")
my_array.insert(1, "Hello")
my_array.unshift("HEY")

# remove item from end of array
my_array.pop
# remove item from beginning
my_array.shift

## The following are NON-DESTRUCTIVE ARRAY METHODS
# grab only a section of an array
index = 0
number_of_items_to_grab = 3
my_array.slice(index, number_of_items_to_grab)

## HELPFUL ARRAY METHODS
# checking length of an array
array = [1,2,3,4,5,6,7,8]
array.length
array.size
array.count

# check if item is included?
array.include?(4) #=> true
array.include?(9) #=> false

# joining array into a string (non-destructive)
letters = ['h', 'e', 'l', 'l', 'o', '!']
letters.join("-")
# binding.pry
# string convert into an array (non-destructive)
string = "hello"
string.split("")
str2 = "Hi,There,Homer,Simpson"
str2.split(",")

# only retain unique item (non-destructive)
shopping_list = ["Milk", "Chocolate", "Tomato", "Tomato"]
shopping_list.uniq #=> ["Milk", "Chocolate", "Tomato"]


### ITERATORS

# each

array = [1,2,3,4]
array.each do |number|
    puts number + 2

end 
#returns the original array

# collect/map
array2 = array.collect do |number|
    number + 2
end 
#returns the modified array

# if you want to find an element inside an array, use .find or .detect
# find/detect grabs a single element in array

str = ["Homer", "Marge", "Maggie", "Lisa", "Bart"]
binding.pry

str.find do |name|
    name == "Marge"
end


numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numbers.select do |n|
    n.even?
end

# https://ruby-doc.org/core-2.7.0/Array.html


