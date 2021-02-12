# Write your code here.
require 'pry'
# katz_deli = []
# other_deli = []
# another_deli = []

def line(deli)
    
     new_line = "The line is currently" #beginning of the string
     if deli.length == 0                
        puts new_line.insert(21, " empty.") #if the array is empty, add a space and "empty." to the end of the announcement string
   
    else
        new_line.insert(21, ':')            #otherwise, add a colon to the end of the announcement string
        deli.each_with_index do |customer, position| 
             
            
        new_line << " #{position + 1}. #{customer}" #for each iteration of the deli line array, output the place in line (0 is first, but we wouldn't use it)
   
    end
   
    puts new_line
    end
end

def take_a_number(deli, customer)
    deli << customer    #shovel the customer to the end of the deli line array
    puts "Welcome, #{customer}. You are number #{deli.length} in line."
end

def now_serving(deli)
    if deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli.shift}." #[0] is first in line
        #deli.shift                           #delete it afterwards, so the next person gets moved up
    end
end