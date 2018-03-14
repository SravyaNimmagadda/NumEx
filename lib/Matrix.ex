defmodule Matrix do
  @moduledoc"""
  A module to perform Matrix Operations
  """
  @doc"""
  Takes a Matrix and finds the maximum element from each row.

  ## Examples

      iex>Matrix.max([[1,2,34],[3,4,5],[4,5,6,7]])
             [34, 5, 7]
  """
  @spec max([[integer]]) :: [integer]
  def max(mat) when is_list(mat)do
    Enum.map(mat, fn x -> Enum.max(x) end)
  end

  @doc"""
  Takes two numerals 'row', 'col' and returns a matrix of random elements.

  ## Examples

      iex> Matrix.rand(2,3)
      [[47, 31, 53], [6, 7, 42]]
  """
  @spec rand(number, number) :: [[number]]
  def rand(row, col) do
      List.duplicate(0, row)
      |> Enum.map(fn _ -> genrandrow(col) end)
  end

  @doc"""
  Takes a numeral 'col' and returns a single row of 'col' number of random elements..

  ## Examples

      iex> Matrix.genrandrow(6)
      [34, 101, 23, 110, 17, 10]
  """
  @spec genrandrow(number) :: [number]
  def genrandrow(col) do
    List.duplicate(0, col)
    |> Enum.map(fn x -> x + :rand.uniform(120) end)
   end

   @doc"""
   Takes two numerals 'row', 'col' and returns a matrix of zeros.

   ## Examples

       iex> Matrix.zeros(6,3)
       [[0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0]]
   """
   @spec zeros(number, number) :: [[number]]
   def zeros(row, col) do
    List.duplicate(0, row)
    |> Enum.map(fn _ -> List.duplicate(0, col) end)
  end

  @doc"""
  Takes two numerals 'row', 'col' and returns a matrix of ones.

  ## Examples

      iex> Matrix.ones(5,3)
      [[1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1, 1]]
  """
  @spec ones(number, number) :: [[number]]
  def ones(row, col) do
    List.duplicate(1, row)
    |> Enum.map(fn _ -> List.duplicate(1, col) end)
  end

  @doc"""
  Takes matrix and returns number of rows in the given matrix.

  ## Examples

      iex> Matrix.rowcount([[12,34,56,11],[98,78,67,0],[0,34,78,9]])
      3
  """
  @spec rowcount([[number]]) :: number
  def rowcount(row = [_ | _]) do
    Enum.count(row)
  end

  @doc"""
  Takes matrix and returns number of columns in the given matrix.

  ## Examples

      iex> Matrix.colcount([[12,34,56,11],[98,78,67,0],[0,34,78,9]])
      4
  """
  @spec columncount([[number]]) :: number
  def columncount([first_row | _]) do
      Enum.count(first_row)
  end

  @doc"""
  Takes a Matrix, returns size of the matrix.

  ## Examples

      iex> Matrix.size([[0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0]])
           6
  """
  @spec size([number]) :: number
  def size(row = [h | _]) when is_list(h) do
    Enum.max([rowcount(row), columncount(row)])
  end

  @doc"""
  Takes two numerals 'row', 'col and returns a the identity matrix of the given order.

  ## Examples

      iex> Matrix.identity(6,3)
      [[1, 0, 0], [0, 1, 0], [0, 0, 1], [0, 0, 0], [0, 0, 0], [0, 0, 0]]
  """
  @spec identity(number, number) :: [[number]]
  def identity(row, col) do
    Enum.map(0..row-1, fn i -> for j <- 0..col-1, do: (if i==j, do: 1, else: 0) end)
  end

  @doc"""
  Takes three numerals 'row', 'col', 'k' and returns eye matrix of the given order.

  ## Examples

      iex> Matrix.eye(4,3,0)
      [[1, 0, 0], [0, 1, 0], [0, 0, 1], [0, 0, 0]]
      iex> Matrix.eye(3, 3, -1)
      [[0, 0, 0], [1, 0, 0], [0, 1, 0]]

  """
  @spec eye(number, number, number) :: [[number]]
  def eye(row, col, k) do
      if k == 0, do: identity(row, col)
      if k > -col and k < col, do: Enum.map(0..row-1, fn i -> for j <- 0..col-1, do: (if j == i + k, do: 1, else: 0)end)

  end

  @doc"""
  Transposes a matrix.

  ## Examples

      iex> Matrix.transpose([[1, 2, 3], [4, 5, 6]])
      [[1, 4], [2, 5], [3, 6]]
  """
  @spec transpose([[number]]) :: [[number]]
  def transpose(a) do
    List.zip(a) |> Enum.map(&Tuple.to_list(&1))
  end

  @doc"""
  Performs elmentwise addition

  ## Examples

      iex> Matrix.add([[1, 2, 3],[1, 1, 1]],[[3, 2, 1],[2, 2, 2]])
      [[4, 4, 4],
       [3, 3, 3]]
  """
  @spec add([[number]], [[number]]) :: [[number]]
  def add(m1, m2) do
    Enum.map(Enum.zip(m1, m2), fn({m1, m2}) -> addLists(m1, m2) end)
  end

  @doc"""
  Performs elementwise subtraction

  ## Examples
      iex> Matrix.sub([[1, 2, 3],[1, 2, 2]],[[1, 2, 3],[2, 2, 2]])
      [[0, 0, 0],
      [-1, 0, 0]]
  """
  @spec sub([[number]], [[number]]) :: [[number]]
  #def sub(a, b) when length(a) !== length(b),
  #do: raise(ArgumentError, "The number of rows in the matrices must match.")
  def sub(m1, m2) do
    Enum.map(Enum.zip(m1, m2), fn({m1, m2}) -> subLists(m1, m2) end)
  end

  @doc"""
  Elementwise mutiplication with a scalar.

  ## Examples

      iex> Matrix.scalar([[2, 2, 2], [1, 1, 1]], 2)
      [[4, 4, 4],
       [2, 2, 2]]
  """
  @spec scalar([[number]], number) :: [[number]]
  def scalar(m1, s) do
    Enum.map(m1, fn(row) -> Enum.map(row, fn(x) -> x * s end) end)
  end

  @doc"""
  Returns the (i, j) submatrix of a matrix. This is the matrix with the
  i<sup>th</sup> row and j<sup>th</sup> column removed.

  ## Examples

      iex> Matrix.submatrix([[2, 9, 4], [8, 7, 6], [3, 1, 5]], 2, 3)
      [[2, 9], [3, 1]]
  """
  @spec submatrix([[number]], number, number) :: [[number]]
  def submatrix(mat, i, j) do
    rowRemove(mat, i) |> colRemove(j)
  end

  @doc"""
  Removes the row i from the matrix.

  ## Examples

      iex> Matrix.rowRemove([[2, 9, 4], [8, 7, 6], [3, 1, 5]], 1)
      [[8, 7, 6], [3, 1, 5]]

  """
  @spec rowRemove([[number]], number) :: [[number]]
  def rowRemove(mat, i) do
    List.delete_at(mat, i - 1)
  end

  @doc"""
  Removes the column j from the matrix.

  ## Examples

      iex> Matrix.colRemove([[2, 9, 4], [8, 7, 6], [3, 1, 5]], 2)
      [[2, 4], [8, 6], [3, 5]]
  """
  @spec colRemove([[number]], number) :: [[number]]
  def colRemove(mat, j) do
    Enum.map(mat, fn x -> (List.delete_at(x, j - 1)) end)
  end

  @doc"""
  Computes the determinant of a matrix.

  ## Examples

     iex> Matrix.det([[6, 2, 1], [4, 3, 5], [2, 0, 7]])

  """
  @spec det([[number]]) :: number
  def det([h | _] = mat) do
     Enum.with_index(h)
     |> List.foldl(0, fn({ele, index}, acc) -> acc +  ele * cofactor(mat, 1, index + 1) end)
  end

  @doc"""
  Computes the the trace of a matrix. This is the sum of the elements accross the
  diagonal of a matrix.

  ## Examples

      iex> Matrix.trace([[6, 1, 1], [4, -2, 5], [2, 8, 7]])
      11
  """
  @spec trace([[number]]) :: number
  def trace(mat) do
     Enum.with_index(mat)
     |> Enum.map(fn({row, index}) -> Enum.at(row, index) end)
     |> Enum.sum
  end

  defp cofactor(mat, i, j), do: minor(mat, i, j) * :math.pow(-1, i + j)

  defp minor(mat, i, j), do:  submatrix(mat, i, j) |> det

  defp addLists(m1, m2), do: for {a, b} <- Enum.zip(m1, m2), do: a + b

  defp subLists(m1, m2), do: addLists(m1, Enum.map(m2, fn(x) -> -x end))

end
