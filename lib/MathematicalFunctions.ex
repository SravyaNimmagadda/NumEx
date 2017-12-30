defmodule MathematicalFunc do
  def sin(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.sin(x), decimals: 2)  end)
  end
end
