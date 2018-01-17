defmodule Binary do
  use Bitwise
  def bitwise_add(arr1, arr2) do
      Enum.zip(arr1, arr2)
      |> Enum.map(fn{x, y} -> band(x,y) end)
  end
  def bitwise_or(arr1, arr2) do
    Enum.zip(arr1, arr2)
    |> Enum.map(fn{x, y} -> bor(x, y) end)
  end
  def bitwise_xor(arr1, arr2) do
    Enum.zip(arr1, arr2)
    |> Enum.map(fn{x, y} -> bxor(x,y) end)
  end
  def invert(arr1) do
    Enum.map(arr1, fn x -> bnot(x) end)
  end
  def left_shift(x, y) when is_list(y) do
    Enum.map(y, fn(c) -> bsl(x, c) end)
  end
  def left_shift(x,y), do: bsl(x,y)
  def right_shift(x,y) when is_list(y) do
    Enum.map(y, fn(c) -> bsr(x, c) end)
  end
  def right_shift(x,y), do: bsr(x,y)
  def binary_repr(x), do: String.to_integer(Integer.to_string(x, 2))
end
