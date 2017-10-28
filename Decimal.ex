defmodule Decimal do
  def compare(n,m) do
      cond do
        n < m -> -1
        n == m -> 0
        n > m -> 1
      end
   end

   def compare_total(n,m) do
       cond do
         n < m -> -1
         n === m -> 0
         n > m -> 1
         true -> -1
       end
    end
 def is_signed(n), do: n < 0
 def abs(n) do
      if n < 0 do  -n
      else n
      end
end

def fma(i, j, k) do
  i * j + k
end
end
