defmodule Sort do
  @moduledoc """
  A module to sort enumerables.
  """
  @doc """
  Takes a list of elements and sorts the elements in quick sort fashion.

      iex>  Sort.quicksort([195,99,78,12])
       [12, 78, 99, 195]]
  """
  def quicksort([]), do: []
  def quicksort([pivot | tail]) do
    {left, right} = Enum.partition(tail, fn(x) -> x < pivot end)
    quicksort(left) ++ [pivot] ++ quicksort(right)
  end
end
