

def line(array)
  new_string = ""
    array.each_with_index do |name,index|  #iterate over the array and get name and index
      new_string << " " + (index+1).to_s + ". " + name   #add each string at each position to a new string
    end
    if array.size == 0
      puts "The line is currently empty."
    else
      puts "The line is currently:#{new_string}"
    end
end

def take_a_number(array,name_of_person)
  array << name_of_person
  number_in_line = array.size
  puts "Welcome, #{name_of_person}. You are number #{number_in_line} in line."
end

def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end

end
