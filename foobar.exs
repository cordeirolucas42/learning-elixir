defmodule FooBar do
  def foobar(n) do
    cond do
      rem(n, 3) === 0 and rem(n, 5) === 0 ->
        "FooBar"

      rem(n, 3) === 0 ->
        "Foo"

      rem(n, 5) === 0 ->
        "Bar"

      true ->
        n
    end
  end

  def print(max) do
    Enum.map(1..max, fn n -> IO.puts(foobar(n)) end)
  end
end

FooBar.print(30)
