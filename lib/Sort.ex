defmodule Sort do
  @moduledoc"""
  A module to sort enumerables.
  """
  @doc"""
  Takes a list of elements and sorts the elements in quick sort fashion.
  ## Examples

      iex>  Sort.quicksort([195,99,78,12])
       [12, 78, 99, 195]]
  """
  def quicksort([]), do: []
  def quicksort([pivot | tail]) do
    {left, right} = Enum.partition(tail, fn(x) -> x < pivot end)
    quicksort(left) ++ [pivot] ++ quicksort(right)
  end

  @doc"""
  Takes a two enumerables and performs Lexographic sort operations.
  ## Examples

      iex> Sort.lexsort([5, 3, 6, 8, 1], [0, 9, 4, 7, 2])
      [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    """

  def lexsort(list1, list2) do
    Enum.concat(list1, list2)
    |> Enum.sort
  end

  @doc"""
  Return a sorted copy of a List of Lists based on the value of axis
  ## Examples

      iex> Sort.sort([[6, 2], [5, 7], [0, 9]], 1)
      [[2, 6], [5, 7], [0, 9]]
      iex> Sort.sort([[6, 2], [5, 7], [1, 3]], 0)
      [[1, 2], [3, 5], [6, 7]]

  """

  def sort(list, axis) do
    cond do
      axis == 0 -> List.flatten(list)
                    |> Enum.sort
                    |> Enum.chunk_every(2)
      axis == 1 -> Enum.map(list, fn x -> Enum.sort(x) end)
    end
  end

  @doc"""
  Return a sorted copy of an Enumerable sorted along one axis only
  ## Examples

      iex> Sort.msort([[3, 4], [0, 1], [6, 5]])
      [[0, 1], [3, 4], [5, 6]]

  """
  def msort(list), do: sort(list, 0)

end
