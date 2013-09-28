# I began with recreating the example in the problem
# change the range value of 'arr' to 1-10 and run to verify

# The code seems to be working right, and returns values fine up until
# the range of 'arr' is increased past 17.  I don't think my computer is
# powerful enough to deal with the large numbers, the program always crashes!
# I believe the code would eventually produce the correct answer, if allowed to run

def one_to_twenty(num)
  arr = (1..20).to_a
  result = arr.map{|x| num % x}
  result = result.inject{|memo, x| memo + x}
  if result == 0
    true
  else 
    false
  end
end

def find_it(number)
  while one_to_twenty(number) == false
    puts number
    number +=1
    break if one_to_twenty(number) == true
  end
  puts "The answer is #{number}!"
end

puts find_it(1)

#122_770_002 last number reached before computer crashed!
