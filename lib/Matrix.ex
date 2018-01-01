defmodule Matrix do
  @moduledoc """
  A module to count non_zeros
  """
  @doc """
  Takes a Matrix and finds the maximum element from each row.
  
      iex>Matrix.max([[1,2,34],[3,4,5],[4,5,6,7]])
             [34, 5, 7]
  """
  def max(h) when is_list(h)do
    Enum.map(h, fn x -> Enum.max(x) end)
  end

  def rand(row, col) do
      List.duplicate(0, row)
      |> Enum.map(fn x -> genrandrow(col) end)
  end

  def genrandrow(col) do
    List.duplicate(0, col)
    |> Enum.map(fn x -> x + :rand.uniform(120) end)
   end

  def zeros(row, col) do
    List.duplicate(0, row)
    |> Enum.map(fn x -> List.duplicate(0, col) end)
  end

  def ones(row, col) do
    List.duplicate(1, row)
    |> Enum.map(fn x -> List.duplicate(1, col) end)
  end

  def rowcount(a = [h | _]) do
    Enum.count(a)
  end

  def columncount([first_row | _]) do
      Enum.count(first_row)
  end

  def size(a = [h | _]) when is_list(h) do
    Enum.max([rowcount(a), columncount(a)])
  end

  def identity(row, col) do
    Enum.map(0..row-1, fn i -> for j <- 0..col-1, do: (if i==j, do: 1, else: 0) end)
  end

  def eye(row, col, k) do
      if k == 0, do: identity(row, col)
      if k > 0 and k < col, do: Enum.map(0..row-1, fn i -> for j <- 0..col-1, do: (if j == i + k, do: 1, else: 0)end)
      if k < 0 and k > (-row), do: Enum.map(0..row-1, fn i -> for j <- 0..col-1, do: (if i == j - k, do: 1, else: 0)end)
  end

end
