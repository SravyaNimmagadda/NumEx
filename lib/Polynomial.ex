defmodule Polynomial do

  def polyadd(a, b) do
    lena = Enum.count(a)
    lenb = Enum.count(b)
    c = []
    
    if(lena > lenb) do
      c = a
      |> Enum.take(lena - lenb)
    end
    if(lenb > lena) do
      c = b
      |> Enum.take(lenb - lena)
    end

    d = List.zip([Enum.reverse(a), Enum.reverse(b)])
    |> Enum.map(fn({x, y}) -> x + y end)
    d ++ c
    |> Enum.reverse

  end

end
