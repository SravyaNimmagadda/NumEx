defmodule Matrix do
  def max(h) when is_list(h)do
    Enum.map(h, fn x -> Enum.max(x) end)
  end

#Yet to form the Matrix struc for rand
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

  def columncount([first_row | _]) when is_list(first_row) do
      Enum.count(first_row)
  end

  def size(a = [h | _]) when is_list(h) do
    Enum.max([rowcount(a), columncount(a)])
  end




end
