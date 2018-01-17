defmodule Decimal do
  @moduledoc """
  A module to perform operations on decimal values
  """

  @doc """
  Takes two Decimal values and compares them; returns "-1" if the first element is less than the second,
  "1" if it is greater and "0" if the elements are equal


      iex> Decimal.compare(1, 5)
      -1
      iex> Decimal.compare(1, -5)
      1
      iex> Decimal.compare(4, 4)
      0
  """
  def compare(n,m) do
      cond do
        n < m -> -1
        n == m -> 0
        n > m -> 1
      end
   end

   @doc """
   Takes two Decimal values and compares them; returns "-1" if the first element is less than the second,
   "1" if it is greater and "0" if the elements are equal. However it helps comparing values like 1 and 1.0


       iex> Decimal.compare_total(1, 5)
       -1
       iex> Decimal.compare_total(1, -5)
       1
       iex> Decimal.compare_total(4, 4)
       0
       iex> Decimal.compare_total(1, 1.0)
       -1
   """

  def compare_total(n,m) do
       cond do
         n < m -> -1
         n === m -> 0
         n > m -> 1
         true -> -1
       end
  end

  @doc """
  Takes a Decimal value and returns if the value is signed


      iex> Decimal.is_signed(10)
      false
      iex> Decimal.is_signed(-10)
      true
      iex> Decimal.is_signed(0)
      false
  """
  def is_signed(n), do: n < 0

  @doc """
  Takes a Decimal value and returns its absolute value


      iex> Decimal.abs(15)
      15
      iex> Decimal.abs(-32)
      32
  """
  def abs(n) do
      if n < 0 do  -n
      else n
      end
  end

  @doc """
  Takes three decimal values and performs fast multiplication and addition i.e,
  for the arguments i, j, k the function returns the value i * j + k


      iex> Decimal.fma(2, 3, -5)
  """
  def fma(i, j, k) do
  i * j + k
  end

end
