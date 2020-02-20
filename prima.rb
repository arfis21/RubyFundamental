puts "bilangan prima"
def prime_factors(n)
prime_array = []    
p = 2
if n < 2
    return p
end

while (n % p == 0) && (p < n)
    prime_array.push(p)
    p += 1
end
#puts prime_array.inspect
return prime_array
end
#prime_factors(600851475143)
puts prime_factors(30)

puts
puts

def check_prime? (num)
  prime=true
 [2,3,5].each do |init|
   if (num%init==0 && num!= init)
   return false
   end
 end
prime
end

def get_primes (num)
  (1..num).select {|i| check_prime?(i)}
end

p get_primes(100)
