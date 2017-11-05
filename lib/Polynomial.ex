defmodule Polynomial do
  def main(a, b) do
     lena = Enum.count(a)
     lenb = Enum.count(b)
     condition(a, b,lena, lenb)
  end
  
  def take(c, len1, len2), do: Enum.take(c, len1-len2)
  
  def condition(a, b, lena, lenb) do
     cond  do
       lena > lenb -> take(a, lena, lenb)
       lenb > lena -> take(b, lenb, lena)
       true -> []
     end
   end

   def polyadd(a, b) do
     list2 = main(a, b)
     list1 = List.zip([Enum.reverse(a), Enum.reverse(b)])
     add(list1, list2)
   end
   
   def add(d, c) do
        Enum.map(d, fn({x, y}) -> x + y end) ++ Enum.reverse(c)
        |> Enum.reverse
   end

   def polysub(a, b) do
     list2 = main(a, b)
     list1 = List.zip([Enum.reverse(a), Enum.reverse(b)])
     sub(list1, list2)
   end
   
   def sub(d, c) do
        Enum.map(d,fn({x, y}) -> x - y end) ++ Enum.reverse(c)
        |> Enum.reverse
   end
end

