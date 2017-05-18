# Write your code here.

katz_deli = []

def line(katz_deli)
  if katz_deli.count == 0
    puts "The line is currently empty."
  else
    katz_deli.map! do |name|
      name = (katz_deli.index(name) + 1).to_s + ". " + name
    end
     puts "The line is currently: " + katz_deli.join(" ")
  end
end

def take_a_number(katz_deli,new_person)
  katz_deli.push(new_person)
  puts "Welcome, #{new_person}. You are number " + (katz_deli.index(new_person) + 1).to_s + " in line."
end

def now_serving(katz_deli)
  if katz_deli.count == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
