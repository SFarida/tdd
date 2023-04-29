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

end

