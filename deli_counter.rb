

def line(array)
  #shows everyone their current place in the line.
  #If there is nobody in line, it should say "The line is currently empty."
  #=> "The line is currently: 1. Grace 2. Kent"
  new_string = ""
  array.each_with_index do |name,index|  #iterate over the array and get name and index
    new_string << (index+1).to_s + ". " + name + " "  #add each string at each position to a new string
  end
  if array.size == 0
    puts "The line is currently empty."
  else
    puts "The line is currently: #{new_string}"
  end
end

def take_a_number(array,name_of_person)
  #Build a method that a new customer will use when entering the deli. The take_a_number method should accept two arguments, the array for the current line of people (katz_deli), and a string containing the name of the person wishing to join the line. The method should return the person's name along with their position in line. Top-Tip: Remember that people like to count from 1, not from 0 ("zero") like computers.
  #return name_of_person and position_in_line
  #Welcome, Ada. You are number 1 in line
  array << name_of_person
  number_in_line = array.size
  puts "Welcome, #{name_of_person}. You are number #{number_in_line} in line."
end

def now_serving(array)
  #should call out (i.e. puts) the next person in line and then remove them from the front. If there is nobody in line, it should call out (puts) that "There is nobody waiting to be served!"
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end

end
