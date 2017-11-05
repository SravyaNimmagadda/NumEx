defmodule Polynomial do
   def polyadd(a, b) do
     lena = Enum.count(a)
     lenb = Enum.count(b)
     c = []
     cond  do
       lena > lenb -> c = take(a, lena, lenb)
       lenb > lena -> c = take(b, lenb, lena)
     end
     append(c, a, b)
   end
   def take(c, l1, l2), do: Enum.take(c, l1-l2)
   def append(c, a, b) do
        Enum.map(List.zip([Enum.reverse(a), Enum.reverse(b)]),fn({x, y}) -> x + y end) ++ c
        |> Enum.reverse
   end
end
