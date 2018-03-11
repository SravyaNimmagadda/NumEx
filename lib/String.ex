defmodule StringManipulations do
  def add(s1, s2) do
    Enum.zip(String.graphemes(s1), String.graphemes(s2)) |>
    Enum.map(fn x -> Tuple.to_list(x) end) |>
    Enum.map(fn x -> Enum.reduce(x |> Enum.reverse, fn(y, acc) -> y <> "" <> acc end)end)
  end
end
