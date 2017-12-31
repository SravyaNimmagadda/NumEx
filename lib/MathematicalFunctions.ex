defmodule MathematicalFunc do
  def sin(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.sin(x), decimals: 2)  end)
  end
  def cos(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.cos(x), decimals: 2)  end)
  end
  def tan(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.tan(x), decimals: 2)  end)
  end
end
