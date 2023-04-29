class Solver
  def factorial (n)
    
    if (n<0) 
       raise Exception.new "Negative number not accepted"
    end

    if (n==0 || n==1) 
      return 1
    end

    i=1
    fac=1

    while (i<=n) do
       fac*=i
       i++
    end

    return fac

  end
  
end

puts Solver.new.factorial(3)
