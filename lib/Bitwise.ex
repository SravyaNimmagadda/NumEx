defmodule Binary do
  use Bitwise
  @moduledoc"""
  A module to perform binary operations on enumerables
  """
  @doc"""
  Takes an two enumerables, performs bitwise_and on them, element_wise.
  ## Examples

      iex> Binary.bitwise_and([2,3,4],[4,5,6])
      [0, 1, 4]
  """
  def bitwise_and(arr1, arr2) do
      Enum.zip(arr1, arr2)
      |> Enum.map(fn{x, y} -> band(x,y) end)
  end
  @doc"""
  Takes an two enumerables, performs bitwise_or on them, element_wise.
  ## Examples

      iex> Binary.bitwise_or([2,3,4],[4,5,6])
      [6, 7, 6]
  """
  def bitwise_or(arr1, arr2) do
    Enum.zip(arr1, arr2)
    |> Enum.map(fn{x, y} -> bor(x, y) end)
  end
  @doc"""
  Takes an two enumerables, performs bitwise_or on them, element_wise.
  ## Examples

      iex> Binary.bitwise_xor([2,3,4],[4,5,6])
      [6, 6, 2]
  """
  def bitwise_xor(arr1, arr2) do
    Enum.zip(arr1, arr2)
    |> Enum.map(fn{x, y} -> bxor(x,y) end)
  end
  @doc"""
  Takes an  enumerable, performs bitwise_not on its elements.
  ## Examples

      iex>  Binary.invert([32, 5, 1])
      [-33, -6, -2]
  """
  def invert(arr1) do
    Enum.map(arr1, fn x -> bnot(x) end)
  end
  @doc"""
  Takes two values, performs arithmetic left shift on them.
  ## Examples

      iex> Binary.left_shift(2,[4,5,6])
      [32, 64, 128]
  """
  def left_shift(x, y) when is_list(y) do
    Enum.map(y, fn(c) -> bsl(x, c) end)
  end
  def left_shift(x,y), do: bsl(x,y)
  @doc"""
  Takes two values, performs arithmetic right shift on them.
  ## Examples

      iex> Binary.right_shift(32,[4,5,6])
      [2, 1, 0]
  """
  def right_shift(x,y) when is_list(y) do
    Enum.map(y, fn(c) -> bsr(x, c) end)
  end
  def right_shift(x,y), do: bsr(x,y)
  @doc"""
  Takes an Integer, returns its binary representation.
  ## Examples

      iex>Binary.binary_repr(5)
      101
  """
  def binary_repr(x), do: String.to_integer(Integer.to_string(x, 2))
end
