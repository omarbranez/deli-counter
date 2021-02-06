# Write your code here.
katz_deli = []
other_deli = []
another_deli = []


def line(deli)
    new_line = "The line is currently"
    if deli.length == 0
        puts new_line.insert(21, " empty.")
    else
        new_line.insert(21, ':')
        deli.each_with_index do |customer, position|
        new_line << " #{position + 1}. #{customer}"
        end
    puts new_line
    end
end

def take_a_number(deli, customer)
    deli << customer
    puts "Welcome, #{customer}. You are number #{deli.length} in line."
end

def now_serving(deli)
    if deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli[0]}."
        deli.shift
    end
end