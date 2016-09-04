class NthPrime
  def nth_prime(n)
    primes = [2,3]
    next_num = primes.last + 2
    until primes.length >= n do
      is_prime = true

      primes.each do |prime|
        if next_num % prime == 0
          is_prime = false
          break
        end
      end

      if is_prime
        primes << next_num
      end

      next_num += 2
    end
    
    primes[n - 1]
  end
end
