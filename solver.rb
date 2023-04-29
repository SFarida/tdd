class Solver
  def factorial(value)
    n = value
    raise Exception, 'Negative number not accepted' if n.negative?

    return 1 if [0, 1].include?(n)

    i = 1
    fac = 1

    while i <= n
      fac *= i
      i += 1
    end

    fac
  end

  def reverse(str)
    i = 0
    j = str.length - 1
    while i < j
      temp = str[i]
      str[i] = str[j]
      str[j] = temp
      i += 1
      j -= 1
    end
    str
  end

  def fizzbuzz(val)
    n = val
    if (n % 3).zero? && (n % 5).zero?
      'fizzbuzz'
    elsif (n % 3).zero?
      'fizz'
    elsif (n % 5).zero?
      'buzz'
    else
      n.to_s
    end
  end
end
