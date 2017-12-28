defmodule Sort do
  def quicksort([]), do: []
  def quicksort([pivot | tail]) do
    {left, right} = Enum.partition(tail, fn(x) -> x < pivot end)
    quicksort(left) ++ [pivot] ++ quicksort(right)
  end
end
