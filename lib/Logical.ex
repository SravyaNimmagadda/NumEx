defmodule Logic do

  @moduledoc"""
  A module to perform Logical operations on enumerables
  """

  @doc"""
  Takes two arrays and performs logical and operation for the corresponding elements in each array

  ## Examples

      iex> Logic.logical_or([false, false, true, true],[false, true, false, true])
      [false, true, true, true]
      iex> Logic.logical_or([-1, 1, 2, 10],[0, 1, 0, 4])
      [-1, 1, 2, 10]

  """
  def logical_and(arr1,arr2) do
    Enum.zip(arr1,arr2)
    |> Enum.map(fn{x, y} -> x && y end)
  end

  @doc"""
  Takes two arrays and performs logical or operation for the corresponding elements in each array

  ## Examples

      iex> Logic.logical_and([false, false, true, true],[false, true, false, true])
      [false, false, false, true]
      iex> Logic.logical_and([-1, 1, 2, 10],[0, 1, 0, 4])
      [0, 1, 0, 4]


  """
  def logical_or(arr1,arr2) do
    Enum.zip(arr1,arr2)
    |> Enum.map(fn{x, y} -> x || y end)
  end

  @doc"""
  Takes an array and performs logical not operation on every induvidual element present in it

  ## Examples

      iex> Logic.logical_not([true, false])
      [false, true]

  """
  def logical_not(arr) do
    Enum.map(arr, fn(x) -> !x end)
  end

  @doc"""
  Takes two arrays and performs logical xor operation for the corresponding elements in each array

  ## Examples

      iex> Logic.logical_xor([false, false, true, true],[false, true, false, true])
      [false, true, true, false]
  """

  def logical_xor(arr1,arr2) do
    Enum.zip(arr1,arr2)
    |> Enum.map(fn{x, y} -> (x && !y) || (!x && y) end)
  end
end
