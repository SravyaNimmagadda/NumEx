defmodule MathematicalFunc do
  require Float
  @pi 3.14159
  @e 2.718281
  @moduledoc """
  A module to perform mathematical unctions
  """
  @doc """
  Takes a list of elements and computes the sine function element wise .

  ##Examples

      iex>MathematicalFunc.sin([1,2,34,4,5])

  """
  def sin(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.sin(x), decimals: 2)  end)


  @doc """
  Takes a list of elements and computes the Hyperbolic sine function element wise .

      iex>MathematicalFunc.sinh([1,2,34,4,5])

  """
  def sinh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.sinh(x), decimals: 2)  end)
  @doc """
  Takes a list of elements and computes the asin function element wise .

      iex>MathematicalFunc.asin([1,2,34,4,5])

  """
  def asin(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.asin(x), decimals: 2)  end)

  @doc """
  Takes a list of elements and computes the asin function element wise .

      iex>MathematicalFunc.asin([1,2,34,4,5])

  """
  def asinh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.asinh(x), decimals: 2)  end)
  @doc """
  Takes a list of elements and computes the cos function element wise .

      iex>MathematicalFunc.cos([1,2,34,4,5])

  """
  def cos(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.cos(x), decimals: 2)  end)

  @doc """
  Takes a list of elements and computes the cosh function element wise .

      iex>MathematicalFunc.cosh([1,2,34,4,5])

  """
  def cosh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.cosh(x), decimals: 2)  end)


  @doc """
  Takes a list of elements and computes the acos function element wise .

      iex>MathematicalFunc.acos([1,2,34,4,5])

  """
  def acos(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.acos(x), decimals: 2)  end)


  @doc """
  Takes a list of elements and computes the acosh function element wise .

      iex>MathematicalFunc.acosh([1,2,34,4,5])

  """
  def acosh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.acosh(x), decimals: 2)  end)


  @doc """
  Takes a list of elements and computes the tan function element wise .

      iex>MathematicalFunc.tan([1,2,34,4,5])

  """
  def tan(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.tan(x), decimals: 2)  end)

  @doc """
  Takes a list of elements and computes the tanh function element wise .

      iex>MathematicalFunc.tanh([1,2,34,4,5])

  """
  def tanh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.tanh(x), decimals: 2)  end)

  @doc """
  Takes a list of elements and computes the atan function element wise .

      iex>MathematicalFunc.atan([1,2,34,4,5])

  """
  def atan(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.atan(x), decimals: 2)  end)

  @doc """
  Takes a list of elements and computes the atanh function element wise .

      iex>MathematicalFunc.atanh([1,2,34,4,5])

  """
  def atanh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.atanh(x), decimals: 2)  end)

  @doc """
  Takes the values of two sides of a right angled triangle and gives the hypotenuse .

      iex> MathematicalFunc.hypot(3, 4)
      5.0


  """

  def hypot(s1, s2), do: :math.sqrt((s1 * s1) + (s2 * s2))

  @doc """
  Convets the angle value in degrees to radians .

      iex> MathematicalFunc.deg2rad(180)
      3.14159


  """

  def deg2rad(degree), do: degree * (@pi / 180)

  @doc """
  Convets the angle value in radians to degrees.

      iex> MathematicalFunc.rad2deg(3.14159)
      180


  """
  def rad2deg(radian), do: radian * (180 / @pi)
  @doc """
  Round elements of the array to the nearest integer.

      iex> MathematicalFunc.rint([3.89, 4.70, 5.62])
      [4, 5, 6]


  """
  def rint(list), do: Enum.map(list, fn x -> round(x) end)
  @doc """
  Return the floor of the input, element-wise.

      iex> MathematicalFunc.floor([3.89, 4.70, 5.62])
      [3.0, 4.0, 5.0]


  """
  def floor(list), do: Enum.map(list, fn x -> Float.floor(x) end)
  @doc """
  Return the ceiling of the input, element-wise.

      iex> MathematicalFunc.ceil([3.89, 4.70, 5.62])
      [4.0, 5.0, 6.0]


  """
  def ceil(list), do: Enum.map(list, fn x -> Float.ceil(x) end)
  @doc """
  Return the truncated value of the input, element-wise.

      iex> MathematicalFunc.truncate([3.89, 4.70, 5.62])
      [3, 4, 5]


  """
  def truncate(list), do: Enum.map(list, fn x -> trunc(x) end)
  defp exponent(base, ex), do: :math.pow(base, ex)
  @doc """
  Calculate the exponential of all elements in the input array.

      iex> MathematicalFunc.exp([2,3,5])
      [7.38, 20.08, 148.41]


  """
  def exp(list), do: Enum.map(list, fn x -> exponent(@e, x) end)
  @doc """
  Calculate exp(x) - 1 for all elements in the array.

      iex> MathematicalFunc.exmp([2, 3, 5])
      [6.38, 19.08, 147.41]


  """
  def exmp(list), do: Enum.map(list, fn x -> exponent(@e, x) - 1 end)
  @doc """
  Calculate :math.pow(2, x) for all x in the input array.

      iex> MathematicalFunc.exp2([4, 5, 6])
      [16.0, 32.0, 64.0]


  """
  def exp2(list), do: Enum.map(list, fn x -> exponent(2, x) end)
  @doc """
  Natural logarithm, element-wise.

      iex> MathematicalFunc.log([3, 4, 5, 8])
      [0.47, 0.60, 0.69, 0.90]


  """
  def log(list), do: Enum.map(list, fn x -> :math.log(x) end)
  @doc """
  Return the base 10 logarithm of the input array, element-wise.

      iex> MathematicalFunc.log10([10, 100, 1000])
      [1.0, 2.0, 3.0]


  """
  def log10(list), do: Enum.map(list, fn x -> :math.log10(x) end)
  @doc """
  Base-2 logarithm of x for all x in input array.

      iex> MathematicalFunc.log2([2,4, 8])
      [1.0, 2.0, 3.0]


  """
  def log2(list), do: Enum.map(list, fn x -> :math.log2(x) end)
  @doc """
  Logarithm of the sum of exponentiations of the inputs.

      iex> MathematicalFunc.logaddexp(5, 10)
      10.006


  """
  def logaddexp(x1, x2), do: :math.log(exponent(@e, x1) + exponent(@e, x2))
  @doc """
  Logarithm of the sum of exponentiations of the inputs in base-2.

      iex> MathematicalFunc.logaddexp2(2, 3)
      2.48


  """
  def logaddexp2(x1, x2), do: :math.log(exponent(2, x1) + exponent(2, x2))
  @doc """
  Return the natural logarithm of one plus the input array, element-wise.

      iex> MathematicalFunc.log1p([4, 5, 7, 8])
        [1.61, 1.79, 2.07, 2.19]


  """
  def log1p(list), do: Enum.map(list, fn x -> :math.log(x + 1) end)
end
