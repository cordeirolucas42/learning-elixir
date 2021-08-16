defmodule Fibonacci do
  def calc(n) do
    cond do
      n < 1 ->
        IO.puts("Error")

      n === 1 or n === 2 ->
        1

      n > 2 ->
        calc(n - 1) + calc(n - 2)
    end
  end
end

# Enum.map(1..10, fn n -> IO.puts(Fibonacci.calc(n)) end)
Enum.map(1..10, &IO.puts(Fibonacci.calc(&1)))
