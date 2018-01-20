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

  @doc """
  Takes a two enumerables and performs Lexographic sort operations.

      iex> Sort.lexsort([5, 3, 6, 8, 1], [0, 9, 4, 7, 2])
      [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    """
    
def lexsort(list1, list2) do
    Enum.concat(list1, list2)
    |> Enum.sort
  end
end
