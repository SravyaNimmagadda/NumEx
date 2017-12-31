defmodule Matrix do
  def max(h) when is_list(h)do
    Enum.map(h, fn x -> Enum.max(x) end)
  end

#Yet to form the Matrix struc for rand
  def rand(row, col) do
      List.duplicate(0,  col)
      |> Enum.map(fn x -> x + :rand.uniform(6) end)
  end
 #Yet to form the Matrix struc for rand
  def zeros(row, col) do
    List.duplicate(0, row * col)
  end

  def ones(row, col) do
    List.duplicate(1, row * col)
  end

  def rowcount(a = [h | _]) when is_list(h) do
    Enum.count(a)
  end

  def columncount([first_row | _]) when is_list(first_row) do
      Enum.count(first_row)
  end

  def size(a = [h | _]) when is_list(h) do
    Enum.max([rowcount(a), columncount(a)])
  end
end
