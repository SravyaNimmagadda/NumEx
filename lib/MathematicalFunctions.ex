defmodule MathematicalFunc do
  @pi 3.14159
  @moduledoc """
  A module to perform mathematical unctions
  """
  @doc """
  Takes a list of elements and computes the sine function element wise .

  ##Examples

      iex>MathematicalFunc.sin([1,2,34,4,5])

  """
  def sin(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.sin(x), decimals: 2)  end)
  end

  @doc """
  Takes a list of elements and computes the Hyperbolic sine function element wise .

      iex>MathematicalFunc.sinh([1,2,34,4,5])

  """
  def sinh(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.sinh(x), decimals: 2)  end)
  end

  @doc """
  Takes a list of elements and computes the asin function element wise .

      iex>MathematicalFunc.asin([1,2,34,4,5])

  """
  def asin(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.asin(x), decimals: 2)  end)
  end

  @doc """
  Takes a list of elements and computes the asin function element wise .

      iex>MathematicalFunc.asin([1,2,34,4,5])

  """
  def asinh(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.asinh(x), decimals: 2)  end)
  end

  @doc """
  Takes a list of elements and computes the cos function element wise .

      iex>MathematicalFunc.cos([1,2,34,4,5])

  """
  def cos(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.cos(x), decimals: 2)  end)
  end

  @doc """
  Takes a list of elements and computes the cosh function element wise .

      iex>MathematicalFunc.cosh([1,2,34,4,5])

  """
  def cosh(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.cosh(x), decimals: 2)  end)
  end

  @doc """
  Takes a list of elements and computes the acos function element wise .

      iex>MathematicalFunc.acos([1,2,34,4,5])

  """
  def acos(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.acos(x), decimals: 2)  end)
  end

  @doc """
  Takes a list of elements and computes the acosh function element wise .

      iex>MathematicalFunc.acosh([1,2,34,4,5])

  """
  def acosh(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.acosh(x), decimals: 2)  end)
  end

  @doc """
  Takes a list of elements and computes the tan function element wise .

      iex>MathematicalFunc.tan([1,2,34,4,5])

  """
  def tan(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.tan(x), decimals: 2)  end)
  end

  @doc """
  Takes a list of elements and computes the tanh function element wise .

      iex>MathematicalFunc.tanh([1,2,34,4,5])

  """
  def tanh(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.tanh(x), decimals: 2)  end)
  end

  @doc """
  Takes a list of elements and computes the atan function element wise .

      iex>MathematicalFunc.atan([1,2,34,4,5])

  """
  def atan(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.atan(x), decimals: 2)  end)
  end

  @doc """
  Takes a list of elements and computes the atanh function element wise .

      iex>MathematicalFunc.atanh([1,2,34,4,5])

  """
  def atanh(list) do
    list
    |> Enum.map(fn x  -> :erlang.float_to_binary(:math.atanh(x), decimals: 2)  end)
  end

  @doc """
  Takes the values of two sides of a right angled triangle and gives the hypotenuse .

      iex> MathematicalFunc.hypot(3, 4)
      5.0


  """

  def hypot(s1, s2) do
    h = (:math.sqrt((s1 * s1) + (s2 * s2)))
  end

  @doc """
  Convets the angle value in degrees to radians .

      iex> MathematicalFunc.deg2rad(180)
      3.14159


  """

  def deg2rad(degree) do
    radian = degree * (@pi / 180)
  end

  @doc """
  Convets the angle value in degrees to radians .

      iex> MathematicalFunc.rad2deg(3.14159)
      180


  """
  def rad2deg(radian) do
    degree = radian * (180 / @pi)
  end

end
