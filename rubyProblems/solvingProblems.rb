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

# Each new term in the fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ... By considering the terms in the fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.


def sum_even(fibonacci_limit)
  fibonacci = [1, 2]
  sum = 0
 
  while fibonacci.length < fibonacci_limit
    fibonacci << fibonacci[-1] + fibonacci[-2]  
  end
  fibonacci.each do |n|
    sum += n if n.even?
  end
  p sum
end

p sum_even(10)

