#if we list the natural numbers below 10 that are multiples of 3 or 5, we get 3,5,6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

def sum_multiples(num)
  sum = 0
  (1..(num - 1)).each do |n|
    if (n == 3 || n == 5) || (n % 3 == 0 || n % 5 == 0)
     sum += n
    end
  end
  p sum
end

sum_multiples(1000)
