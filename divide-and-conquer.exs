defmodule FindItems do
  def find(n,list) when n > 0 do
    # divide list
    find(n,list)
    find(n,list)
  end
end

IO.puts(FindItems.find(7,Enum.to_list(1..100)))