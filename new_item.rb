require_relative "class.rb"
require_relative "array.rb"

puts "Enter a new item"
@input = Item.new(gets.chomp)

#get file contents 
items = $items
#add to the array 
items.push(@input.name)
#remove from array
# items.delete(items[0])
#overwrite file
File.write('array.rb', "$items = #{items}")

puts "Add another item(Yes/No)"
input2 = gets.chomp
if input2 == "Yes"
    system("ruby new_item.rb")
else
    puts "Goodbye"
end