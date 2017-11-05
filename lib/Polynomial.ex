
defmodule Polynomial do
   def polyadd(a, b) do
     lena = Enum.count(a)
     lenb = Enum.count(b)
     list =
     cond  do
       lena > lenb -> take(a, lena, lenb)
       lenb > lena -> take(b, lenb, lena)
       true -> []
     end
     append(list, a, b)
   end
   def take(c, len1, len2), do: Enum.take(c, len1-len2)
   def append(c, a, b) do
        Enum.map(List.zip([Enum.reverse(a), Enum.reverse(b)]),fn({x, y}) -> x + y end) ++ c
        |> Enum.reverse
   end
end

