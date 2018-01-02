defmodule Matrix do
  @moduledoc """
  A module to perform Matrix Operations
  """
  @doc """
  Takes a Matrix and finds the maximum element from each row.

      iex>Matrix.max([[1,2,34],[3,4,5],[4,5,6,7]])
             [34, 5, 7]
  """
  def max(mat) when is_list(mat)do
    Enum.map(mat, fn x -> Enum.max(x) end)
  end

  @doc """
  Takes two numerals 'row', 'col' and returns a matrix of random elements.

      iex> Matrix.rand(2,3)
      [[47, 31, 53], [6, 7, 42]]
  """
  def rand(row, col) do
      List.duplicate(0, row)
      |> Enum.map(fn x -> genrandrow(col) end)
  end

  @doc """
  Takes a numeral 'col' and returns a single row of 'col' number of random elements..

      iex> Matrix.genrandrow(6)
      [34, 101, 23, 110, 17, 10]
  """

  def genrandrow(col) do
    List.duplicate(0, col)
    |> Enum.map(fn x -> x + :rand.uniform(120) end)
   end

   @doc """
   Takes two numerals 'row', 'col' and returns a matrix of zeros.

       iex> Matrix.zeros(6,3)
       [[0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0]]
   """
  def zeros(row, col) do
    List.duplicate(0, row)
    |> Enum.map(fn x -> List.duplicate(0, col) end)
  end

  @doc """
  Takes two numerals 'row', 'col' and returns a matrix of ones.

      iex> Matrix.ones(5,3)
      [[1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1, 1]]
  """
  def ones(row, col) do
    List.duplicate(1, row)
    |> Enum.map(fn x -> List.duplicate(1, col) end)
  end

  @doc """
  Takes matrix and returns number of rows in the given matrix.

      iex> Matrix.rowcount([[12,34,56,11],[98,78,67,0],[0,34,78,9]])
      3

  """
  def rowcount(row = [h | _]) do
    Enum.count(row)
  end

  @doc """
  Takes matrix and returns number of columns in the given matrix.

      iex> Matrix.colcount([[12,34,56,11],[98,78,67,0],[0,34,78,9]])
      4
  """
  def columncount([first_row | _]) do
      Enum.count(first_row)
  end

  @doc """
  Takes a Matrix, returns size of the matrix.

      iex> Matrix.size([[0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0]])
           6
  """
  def size(row = [h | _]) when is_list(h) do
    Enum.max([rowcount(row), columncount(row)])
  end

  @doc """
  Takes two numerals 'row', 'col and returns a the identity matrix of the given order.

      iex> Matrix.identity(6,3)
      [[1, 0, 0], [0, 1, 0], [0, 0, 1], [0, 0, 0], [0, 0, 0], [0, 0, 0]]
  """
  def identity(row, col) do
    Enum.map(0..row-1, fn i -> for j <- 0..col-1, do: (if i==j, do: 1, else: 0) end)
  end

  @doc """
  Takes three numerals 'row', 'col', 'k' and returns eye matrix of the given order.

      iex> Matrix.eye(4,3,0)
      [[1, 0, 0], [0, 1, 0], [0, 0, 1], [0, 0, 0]]

  """
  def eye(row, col, k) do
      if k == 0, do: identity(row, col)
      if k > 0 and k < col, do: Enum.map(0..row-1, fn i -> for j <- 0..col-1, do: (if j == i + k, do: 1, else: 0)end)
      if k < 0 and k > (-row), do: Enum.map(0..row-1, fn i -> for j <- 0..col-1, do: (if i == j - k, do: 1, else: 0)end)
  end

end
