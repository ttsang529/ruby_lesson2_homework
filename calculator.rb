def operation
  begin
    puts "please enter your operation:"
    puts "1) add 2) substract 3) multiply 4) divide"
    operation = gets.chomp.to_i
  end while ![1,2,3,4].include?(operation)
  return operation
end

def calculate(operation, x, y)
  case operation  
  when 1 
    puts "your answer is: #{x + y}"
  when 2 
    puts "your answer is: #{x - y}"
  when 3
    puts "your answer is: #{x * y}"
  else
    puts "your answer is: #{x / y}"
  end
end

puts "Please enter first number"
x=gets.chomp.to_i
puts "Please enter second number"
y=gets.chomp.to_i
puts "please enter your operation"



operation = operation()
calculate(operation, x, y)

