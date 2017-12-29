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

   def polymul(a, b) do
     lna = Enum.count(a) - 1
     lnb = Enum.count(b) - 1
     n = lna + lnb + 1
     result = List.duplicate(0, n)

     resultpoly = for i <- 0..lna, j <- 0..lnb, do: List.update_at(result, i+j ,&(&1 + (Enum.at(a, i) * Enum.at(b, j))))
     resultpoly
     |> Enum.zip
     |> Enum.map(fn(x) -> Tuple.to_list(x) end)
     |> Enum.map(fn(x) -> Enum.sum(x) end)

    end

  def polydiv(_, []), do: raise ArgumentError, "denominator is zero"

  def polydiv(_, [0]), do: raise ArgumentError, "denominator is zero"

  def polydiv(f, g) when length(f) < length(g), do: {[0], f}

  def polydiv(f, g) do
    {q, r} = polydiv(g, [], f)
    if q == [], do: q = [0]
    if r == [], do: r = [0]
    {q, r}
  end


  defp polydiv(g, q, r) when length(r) < length(g), do: {q, r}

  defp polydiv(g, q, r) do
    p = div(hd(r), hd(g))
    temprem = Enum.zip(r, g)
         |> Enum.with_index
         |> Enum.reduce(r, fn {{n, d}, i}, acc ->
              List.replace_at(acc, i, n - p * d)
            end)
    polydiv(g, q++[p], tl(temprem))
  end

end
