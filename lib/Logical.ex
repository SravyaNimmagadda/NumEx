defmodule Logic do
  def logical_and(arr1,arr2) do
    Enum.zip(arr1,arr2)
    |> Enum.map(fn{x, y} -> x && y end)
  end

  def logical_or(arr1,arr2) do
    Enum.zip(arr1,arr2)
    |> Enum.map(fn{x, y} -> x || y end)
  end

  def logical_and(arr1,arr2) do
    Enum.zip(arr1,arr2)
    |> Enum.map(fn{x, y} -> x && y end)
  end

  def logical_not(arr) do
    Enum.map(arr, fn(x) -> !x end)
  end

  def logical_xor(arr1,arr2) do
    Enum.zip(arr1,arr2)
    |> Enum.map(fn{x, y} -> (x && !y) || (!x && y) end)
  end

>>>>>>> 529946d9a288f39734228f0a5923dd8b56f10876
end
