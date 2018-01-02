defmodule Count do
  @moduledoc """
  A module to count non_zeros in a given Enumerable.
  """
  @doc """
  Takes an enumerable and counts all non-zero elements from it.

      iex> Count.count_nonzero([1,0,9,0,3,0,5])
      4
  """
  def count_nonzero(l) do
    Enum.count(l, fn(x)  -> x != 0 end)
  end
end
