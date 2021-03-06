defmodule Count do
  @moduledoc"""
  A module to count various parameters in a given Enumerable.
  """
  @doc"""
  Takes an enumerable and counts all non-zero elements from it.

  ## Examples

      iex> Count.count_nonzero([1,0,9,0,3,0,5])
      4
  """
  @spec count_nonzero(list) :: integer
  def count_nonzero(l) do
    Enum.count(l, fn(x)  -> x != 0 end)
  end


end
