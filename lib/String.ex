defmodule StringManipulations do
  def add(s1, s2) do
    Enum.zip(String.graphemes(s1), String.graphemes(s2)) |>
    Enum.map(fn x -> Tuple.to_list(x) end) |>
    Enum.map(fn x -> Enum.reduce(x |> Enum.reverse, fn(y, acc) -> y <> "" <> acc end) end) #|>
    #List.to_string
  end

  def multiply(s1, n) do
    cond do
      n === 0 -> ""
      n > 0 ->
        String.graphemes(s1) |>
        Enum.map(fn x -> String.duplicate(x, n) end) #|>
        #List.to_string
    end
  end

  def center(s1, n) do
    String.graphemes(s1) |>
    Enum.take(n)
  end

  def join(s1, s2) do
    k = String.graphemes(s2)
    s = Enum.take(k, String.length(s2) -1) |>
        Enum.map(fn x -> x <> "" <> s1 end) |>
        List.to_string
    s <> "" <> List.to_string(Enum.take(k, -1))
  end

  
end
