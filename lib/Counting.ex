defmodule Count do
  def count_nonzero(l) do
    Enum.count(l, fn(x)  -> x != 0 end)
  end
end
