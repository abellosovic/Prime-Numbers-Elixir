defmodule Divisors do
  def divisors(n, d) when n==d, do: [n]
  def divisors(n, d) when n>d do
    reminder = rem n, d
    step = 1
    if d>2 and d<n-2 do
      step = 2
    end
    case reminder do
      0 -> [d] ++ divisors(n, d+step)
      _ -> [] ++ divisors(n, d+step)
    end
  end
  def divisors(n) do
    lista = [1]
    if n>1 do
      lista ++ divisors(n, 2)
    end
  end
end

defmodule Prime do
  def is_prime(n) when n<2 and is_integer(n), do: false
  def is_prime(n) when n>1 and is_integer(n) do
    case length(Divisors.divisors(n)) do
      2 -> true
      _ -> false
    end
  end
  def is_prime(n) when not is_integer(n), do: raise ArgumentError
end
