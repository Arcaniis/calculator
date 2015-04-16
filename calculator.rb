system("cls")
system("clear")

puts "This program will ask you for a first number and a second number. 
After that, please choose the operator to use with the two numbers."

# Just a method to add artifical load time to allow time to read.
def loading
  3.times do 
    sleep(0.5) 
    print "."
  end
end

loading

puts "\nPlease enter your first number:"
num1 = gets.to_f

loading

puts "\nPlease enter your second number:"
num2 = gets.to_f

loading

operator = 0

until operator == 1 || operator == 2 || operator == 3 || operator == 4
puts "\nPlease choose your operation:\n1) +\n2) -\n3) x\n4) /"
operator = gets.chomp.to_i
end

case operator
when 1
  answer = num1 + num2
  puts "\n#{num1} + #{num2} = #{answer}"
when 2
  answer = num1 - num2
  puts "\n#{num1} - #{num2} = #{answer}"
when 3
  answer = num1 * num2
  puts "\n#{num1} x #{num2} = #{answer}"
when 4
  answer = num1 / num2
  puts "\n#{num1} / #{num2} = #{answer}"
end
    