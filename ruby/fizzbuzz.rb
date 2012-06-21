num=0
while num<100 do
  num+=1
  if num%15==0 then
    puts "FizzBuzz"
  elsif num%3==0 then
    puts "Fizz"
  elsif num%5==0 then
    puts "Buzz"
  else
    puts num
  end
end

