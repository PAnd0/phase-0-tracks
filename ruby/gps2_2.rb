#gps 2.2
#Pseudocode

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
 # Split string on " " = array
 # create a hash
 # set default quantity = 1
 # iterate through array of items
 # for each item add to hash
 # print the list to the console (print_list method)
# output: Hash. Key = Item, value = quantity (int)

# Method to add an item to a list
# input: item list, item name and optional quantity
# steps: add item to list with key = item name and quantity = quantity parameter if present, otherwise default
# output: hash with new item added

# Method to remove an item from the list
# input: item list, item name (key)
# steps: iterate through item list hash and remove items with keys matching input item key
# output: hash with item removed

# Method to update the quantity of an item
# input: item list, item, new quantity
# steps: update input key with input new value
# output: updated item list hash

# Method to print a list and make it look pretty
# input: item list
# steps: iterate through hash and print each key and value separated by ':', one pair per line
# output: nil

#str = "carrots apples cereal pizza"


# Method to create a list
def create_list (list)
 arr = list.split(' ')
 grocery_list = Hash.new

 arr.each do |key|
   grocery_list[key] = 1
 end
 grocery_list
end

# Method to add an item to a list
def add_item (list, item, quantity = 1)
 list[item] = quantity
 list
end

# Method to remove an item from the list
def remove_item (list, item)
 list.delete(item)
 list
end

# Method to update the quantity of an item
def update_quantity(list, item, quantity)
 list[item] = quantity
 list
end
# Method to print a list and make it look pretty
def print_list(list)
 list.each do |key, value|
   puts "#{key.capitalize}, #{value}"
 end
end


#create list
test_list = create_list("")
=begin
p add_item(test_list, "lemonade", 2)
p add_item(test_list, "tomatoes", 3)
p add_item(test_list, "onions", 1)
p add_item(test_list, "ice cream", 4)
=end
#create an array for each item and each item's quantity
test_items = ["lemonade", "tomatoes", "onions", "ice cream"]
test_quantities =[2, 3, 1, 4]
#adding items to empty hash (test_list)
index = 0
while index < test_items.length do
 add_item(test_list, test_items[index], test_quantities[index])
 index += 1
end

#remove lemonade from list
remove_item(test_list, "lemonade")
#update quantity of ice cream to 1
update_quantity(test_list, "ice cream", 1)
#print out your list
print_list(test_list)

#Reflect
# What did you learn about pseudocode from working on this challenge?
  #Detailed pseudocode will save coding time later in a project and is worth the time investment.
# What are the tradeoffs of using arrays and hashes for this challenge?
  #Hashes are more appropriate when data is naturally grouped into pairs or when labels are needed.
# What does a method return?
  #a method returns either an explicitly specified return value or an implicit return value (the last expression evaluated).
# What kind of things can you pass into methods as arguments?
  # block, method, data types (ints, strings), data structures (arrays, hashes), or other objects.
# How can you pass information between methods methods can save information in class variables or pass information as arguments to another method. Methods can be nested.
# What concepts were solidified in this challenge, and what concepts are still confusing? I still need to research how to access the functionality of one method within a second method. Maybe this can be accomplished by passing the first method to the second method as an argument.
