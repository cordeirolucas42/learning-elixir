defmodule FindItems do
  def find(n,arr) when length(arr)>1 do
    # divide list
    {low,high} = Enum.split(arr,div(length(arr),2))
    # IO.puts(low)
    # IO.puts(high)
    [find(n,low),find(n,high)]
  end

  def find(n,arr) when length(arr)==1 do
    if Enum.member?(arr,n) do
      "Ok!"
    end
  end
end

# IO.puts(FindItems.find(7,Enum.to_list(1..10)))
IO.puts("#{inspect FindItems.find(99,Enum.to_list(1..100))}")