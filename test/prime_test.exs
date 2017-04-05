defmodule PrimeTest do
  use ExUnit.Case
  doctest Prime

  test "0 isn't prime" do
    assert Prime.is_prime(0) == false
  end
  test "1 isn't prime" do
    assert Prime.is_prime(1) == false
  end
  test "2 is prime" do
    assert Prime.is_prime(2) == true
  end
  test "3 is prime" do
    assert Prime.is_prime(3) == true
  end
  test "4 isn't prime" do
    assert Prime.is_prime(4) == false
  end
  test "7 is prime" do
    assert Prime.is_prime(7) == true
  end
  test "9 isn't prime" do
    assert Prime.is_prime(9) == false
  end
  test "103069 is prime" do
    assert Prime.is_prime(103069) == true
  end
  test "2.5 is prime" do
    assert_raise ArgumentError, fn ->
      Prime.is_prime(2.5)
    end
  end
end
