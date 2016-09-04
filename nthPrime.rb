class NthPrime
  def nth_prime(n)
    primes = [2,3]
    next_num = primes.last + 1
    until primes.length >= n do
      is_prime = true

      primes.each do |prime|
        if next_num % prime == 0
          is_prime = false
        end
      end

      if is_prime
        primes << next_num
      end
      next_num += 1
    end
    primes[n - 1]
  end
end
