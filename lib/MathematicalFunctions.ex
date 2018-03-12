defmodule MathematicalFunc do
  require Float
  @pi 3.14159
  @e 2.718281
  @moduledoc"""
  A module to perform mathematical functions
  """
  @doc"""
  Takes a list of elements and computes the sine function element wise .

  ##Examples

      iex>MathematicalFunc.sin([1,2,34,4,5])
      ["0.84", "0.91", "0.53", "-0.76", "-0.96"]

  """
  @spec sin([integer]) :: [integer]
  def sin(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.sin(x), decimals: 2)  end)

  @doc"""
  Takes a list of elements and computes the Hyperbolic sine function element wise .

  ## Examples

      iex>MathematicalFunc.sinh([1,2,34,4,5])

  """
  #@spec sinh([integer]) :: [integer]
  def sinh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.sinh(x), decimals: 2)  end)
  @doc"""
  Takes a list of elements and computes the asin function element wise .

  ## Examples

      iex>MathematicalFunc.asin([1,2,34,4,5])

  """
  #@spec sinh([integer]) :: [integer]
  def asin(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.asin(x), decimals: 2)  end)

  @doc"""
  Takes a list of elements and computes the asin function element wise .

  ## Examples

      iex>MathematicalFunc.asin([1,2,34,4,5])

  """
  #@spec sinh([integer]) :: [integer]
  def asinh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.asinh(x), decimals: 2)  end)

  @doc"""
  Takes a list of elements and computes the cos function element wise .

  ## Examples

      iex>MathematicalFunc.cos([1,2,34,4,5])

  """
  #@spec sinh([integer]) :: [integer]
  def cos(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.cos(x), decimals: 2)  end)

  @doc"""
  Takes a list of elements and computes the cosh function element wise .

  ## Examples

      iex>MathematicalFunc.cosh([1,2,34,4,5])

  """
  def cosh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.cosh(x), decimals: 2)  end)

  @doc"""
  Takes a list of elements and computes the acos function element wise .

  ## Examples

      iex>MathematicalFunc.acos([1,2,34,4,5])

  """
  #@spec sinh([integer]) :: [integer]
  def acos(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.acos(x), decimals: 2)  end)


  @doc"""
  Takes a list of elements and computes the acosh function element wise .

  ## Examples

      iex>MathematicalFunc.acosh([1,2,34,4,5])

  """
  #@spec sinh([integer]) :: [integer]
  def acosh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.acosh(x), decimals: 2)  end)

  @doc"""
  Takes a list of elements and computes the tan function element wise .

  ## Examples

      iex>MathematicalFunc.tan([1,2,34,4,5])

  """
  #@spec sinh([integer]) :: [integer]
  def tan(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.tan(x), decimals: 2)  end)

  @doc"""
  Takes a list of elements and computes the tanh function element wise .

  ## Examples

      iex>MathematicalFunc.tanh([1,2,34,4,5])

  """
  #@spec sinh([integer]) :: [integer]
  def tanh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.tanh(x), decimals: 2)  end)

  @doc"""
  Takes a list of elements and computes the atan function element wise .

  ## Examples

      iex>MathematicalFunc.atan([1,2,34,4,5])

  """
  #@spec sinh([integer]) :: [integer]
  def atan(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.atan(x), decimals: 2)  end)

  @doc"""
  Takes a list of elements and computes the atanh function element wise .

  ## Examples

      iex>MathematicalFunc.atanh([1,2,34,4,5])

  """
  #@spec sinh([integer]) :: [integer]
  def atanh(list), do: Enum.map(list, fn x  -> :erlang.float_to_binary(:math.atanh(x), decimals: 2)  end)

  @doc"""
  Takes the values of two sides of a right angled triangle and gives the hypotenuse .

  ## Examples

      iex> MathematicalFunc.hypot(3, 4)
      5.0

  """
  #@spec sinh([integer]) :: [integer]
  def hypot(s1, s2), do: :math.sqrt((s1 * s1) + (s2 * s2))

  @doc"""
  Convets the angle value in degrees to radians .

  ## Examples

      iex> MathematicalFunc.deg2rad(180)
      3.14159

  """
  #@spec sinh([integer]) :: [integer]
  def deg2rad(degree), do: degree * (@pi / 180)

  @doc"""
  Convets the angle value in radians to degrees.

  ## Examples

      iex> MathematicalFunc.rad2deg(3.14159)
      180

  """
  #@spec sinh([integer]) :: [integer]
  def rad2deg(radian), do: radian * (180 / @pi)

  @doc"""
  Round elements of the array to the nearest integer.

  ## Examples

      iex> MathematicalFunc.rint([3.89, 4.70, 5.62])
      [4, 5, 6]

  """
  #@spec sinh([integer]) :: [integer]
  def rint(list), do: Enum.map(list, fn x -> round(x) end)

  @doc"""
  Return the floor of the input, element-wise.

  ## Examples

      iex> MathematicalFunc.floor([3.89, 4.70, 5.62])
      [3.0, 4.0, 5.0]

  """
  #@spec sinh([integer]) :: [integer]
  def floor(list), do: Enum.map(list, fn x -> Float.floor(x) end)

  @doc"""
  Return the ceiling of the input, element-wise.

  ## Examples

      iex> MathematicalFunc.ceil([3.89, 4.70, 5.62])
      [4.0, 5.0, 6.0]

  """
  #@spec sinh([integer]) :: [integer]
  def ceil(list), do: Enum.map(list, fn x -> Float.ceil(x) end)

  @doc"""
  Return the truncated value of the input, element-wise.

  ## Examples

      iex> MathematicalFunc.truncate([3.89, 4.70, 5.62])
      [3, 4, 5]

  """
  #@spec sinh([integer]) :: [integer]
  def truncate(list), do: Enum.map(list, fn x -> trunc(x) end)

  defp exponent(base, ex), do: :math.pow(base, ex)

  @doc"""
  Calculate the exponential of all elements in the input array.

  ## Examples

      iex> MathematicalFunc.exp([2,3,5])
      [7.38, 20.08, 148.41]

  """
#  @spec sinh([integer]) :: [integer]
  def exp(list), do: Enum.map(list, fn x -> exponent(@e, x) end)

  @doc"""
  Calculate exp(x) - 1 for all elements in the array.

  ## Examples

      iex> MathematicalFunc.exmp([2, 3, 5])
      [6.38, 19.08, 147.41]

  """
#  @spec sinh([integer]) :: [integer]
  def exmp(list), do: Enum.map(list, fn x -> exponent(@e, x) - 1 end)

  @doc"""
  Calculate :math.pow(2, x) for all x in the input array.

  ## Examples

      iex> MathematicalFunc.exp2([4, 5, 6])
      [16.0, 32.0, 64.0]


  """
#  @spec sinh([integer]) :: [integer]
  def exp2(list), do: Enum.map(list, fn x -> exponent(2, x) end)

  @doc"""
  Natural logarithm, element-wise.

  ## Examples

      iex> MathematicalFunc.log([3, 4, 5, 8])
      [0.47, 0.60, 0.69, 0.90]

  """
#  @spec sinh([integer]) :: [integer]
  def log(list), do: Enum.map(list, fn x -> :math.log(x) end)

  @doc"""
  Return the base 10 logarithm of the input array, element-wise.

  ## Examples

      iex> MathematicalFunc.log10([10, 100, 1000])
      [1.0, 2.0, 3.0]

  """
#  @spec log10([integer]) :: [float]
  def log10(list), do: Enum.map(list, fn x -> :math.log10(x) end)

  @doc"""
  Base-2 logarithm of x for all x in input array.

  ## Examples

      iex> MathematicalFunc.log2([2,4, 8])
      [1.0, 2.0, 3.0]

  """
#  @spec log2([integer]) :: [float]
  def log2(list), do: Enum.map(list, fn x -> :math.log2(x) end)

  @doc"""
  Logarithm of the sum of exponentiations of the inputs.

  ## Examples

      iex> MathematicalFunc.logaddexp(5, 10)
      10.006

  """
#  @spec logaddexp(integer, integer) :: float
  def logaddexp(x1, x2), do: :math.log(exponent(@e, x1) + exponent(@e, x2))

  @doc"""
  Logarithm of the sum of exponentiations of the inputs in base-2.

  ## Examples

      iex> MathematicalFunc.logaddexp2(2, 3)
      2.48

  """
#  @spec logaddexp2(integer, integer) :: float
  def logaddexp2(x1, x2), do: :math.log(exponent(2, x1) + exponent(2, x2))

  @doc"""
  Return the natural logarithm of one plus the input array, element-wise.

  ## Examples

      iex> MathematicalFunc.log1p([4, 5, 7, 8])
        [1.61, 1.79, 2.07, 2.19]

  """
#  @spec log1p([integer]) :: [float]
  def log1p(list), do: Enum.map(list, fn x -> :math.log(x + 1) end)

  @doc"""
  Add arguments element-wise.

  ## Examples

      iex> MathematicalFunc.add([4, 6, 8190])
      8200

  """
#  @spec add([integer]) :: [integer]
  def add(list), do: Enum.sum(list)

  @doc"""
  Return the sinc function.

  ## Examples

      iex> MathematicalFunc.sinc([4, 6, -4, 5])
      [-0.09, -0.03, -0.09, 0.06]

  """
#  @spec sinc([integer]) :: [integer]
  def sinc(list), do:  Enum.map(list, fn x -> :math.sin(@e * x)/(@e * x) end)

end
