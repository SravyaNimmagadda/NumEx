defmodule Matrix do
  def max(h) when is_list(h) do
    Enum.max(h)
  end

  def rand(row, col) do
      r = List.duplicate(0, row * col)
      Enum.map(r,fn(x) -> x = x + :rand.uniform(6) end)
  end
end
