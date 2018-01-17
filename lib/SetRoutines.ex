defmodule SetRoutines do
  @moduledoc """
  A module to perform some missing set operations
  """
  @doc """
  Takes two enumerables, returns a MapSet by performing set exclusive-or on them, element-wise.
  iex> SetRoutines.setxor1d([1,2,3,2,4],[2,3,5,7,5])
  #MapSet<[1, 4, 5, 7]>
  """
  def setxor1d(arr1, arr2) do
    x = MapSet.new(arr1)
    y = MapSet.new(arr2)
    MapSet.difference(MapSet.union(x, y), MapSet.intersection(x, y))
  end
end
