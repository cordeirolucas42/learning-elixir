defmodule Factorial do
  def calc(n) when n > 0 do
    n * calc(n - 1)
  end

  def calc(_n) do
    1
  end
end

Enum.map(1..10, fn n -> IO.puts("Factorial of #{n} is #{Factorial.calc(n)}.\n") end)
