#!/usr/bin/env ruby

#  Project Euler is a cool programming site where you can work on math problems
#  with code.  The code below solves this problem: https://projecteuler.net/problem=1
#
#  To run this... assuming you've got ruby installed you can simply do
#
#     ruby sum.rb
#
#  And it should emit the following result
#
#     The sum of all multiples of [3, 5] up to 999 is 233168
#
#
###########################################################################

#  This is how you write a function
def is_multiple?(number, multiples)
  result = false

  #  multiples is an array of numbers.  This will loop over the values in that
  #  array and run the test inside of the loop.
  multiples.each do |m|
    #  1.  This will set result to true if number is a multiple of any of the
    #  numbers in the multiples array.
    # 2.  || is how you do boolean "or" (compare two expressions both of which
    #  are true or false and make sure at least one is true)
    #  Some reading: https://en.wikipedia.org/wiki/Boolean_data_type
    # 3.  % is the "modulo oepration" and returns the remainder in division
    #  Some reading: https://en.wikipedia.org/wiki/Modulo_operation
    # 4. | is called "bitwise OR"
    #  Some reading: https://stackoverflow.com/questions/8569039/ruby-assignment-operator
    #                https://en.wikipedia.org/wiki/Bitwise_operation
    #  The second one is pretty hard.
    result = result | (number % m == 0)
  end

  return result
end

###########################################################################
#  All of the below is just code... not inside of a function.  If you run this
#  script it WILL run whereas the function above would only run if you wrote
#  code to call it.

# A variable initialized to 0
sum = 0
multiples = [3,5]
max = 1000

#  This "upto" will allow us to iterate the the numbers from 1 to max
1.upto(max-1) do |i|

  #  Call the function is_multiple? passing in the current value of i and
  #  testing if it's a multiple of 3 or 5 both of which are passed into the
  #  function in an array.
  if is_multiple?(i, multiples)
    #  When i is a multiple of [3,5] then we add i to our
    sum += i
  end

end

#  Print the result to the screen
puts "The sum of all multiples of #{multiples.inspect} up to #{max} is #{sum}"

###########################################################################
#  ASSIGNMENT requirement 5a
#
#  Take the code above (starting with sum = 0) and put it into a function then
#  uncomment these lines below, run the script and show me that you can get
#  these results:
#
#  The sum of all multiples of [3, 5] up to 10000 is 23331668
#  The sum of all multiples of [7] up to 1000 is 71071
#  The sum of all multiples of [7] up to 5000 is 1786785

# compute_sum(10000, [3, 5])
# compute_sum(1000, [7])
# compute_sum(5000, [7])
