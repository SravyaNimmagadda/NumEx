defmodule Fraction do
require Integer

@moduledoc"""
A module to perform various operations on Fractions.
"""

defstruct [:numerator, :denominator]


@doc"""
Gives a fration structure to a value.

## Examples

    iex> Fraction.new(15)
    %Fraction{denominator: 1, numerator: 15}
    iex> Fraction.new(-3)
    %Fraction{denominator: 1, numerator: -3}
"""

def new(x), do: %Fraction{numerator: x, denominator: 1}
@doc"""
Gives a fration structure to a value.

## Examples

    iex> Fraction.new(15, 7)
    %Fraction{denominator: 7, numerator: 15}
    iex> Fraction.new(-3, 4)
    %Fraction{denominator: 4, numerator: -3}

"""
def new(x, y), do: %Fraction{numerator: x, denominator: y}

@doc"""
Converts a mixed fraction to an improper fraction

## Examples

    iex> Fraction.to_improper(5, 1, 2)
    %Fraction{denominator: 2, numerator: 11}

"""

def to_improper(x,y,z), do: %Fraction{numerator: x * z + y, denominator: z}

@doc"""
Converts an improper fraction to a mixed fraction

## Examples

    iex> Fraction.to_mixed(11, 2)
    {5, %Fraction{denominator: 2, numerator: 1}}

"""

def to_mixed(x,y) do
  cond do
    x > y -> {div(x,y), %Fraction{numerator: rem(x,y), denominator: y}}
    x < y -> new(x,y)
  end
end

@doc"""
Returns the sum of two Fractions

## Examples

    iex> Fraction.add([2,3],[1,2])
    %Fraction{denominator: 6, numerator: 7}


"""

def add([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new((x.numerator * y.denominator) + (y.numerator * x.denominator), x.denominator * y.denominator)
end

@doc"""
Returns the difference of two Fractions

## Examples

    iex> Fraction.sub([2,3],[1,2])
    %Fraction{denominator: 6, numerator: 1}

"""

def sub([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new((x.numerator * y.denominator) - (y.numerator * x.denominator), x.denominator * y.denominator)
end

@doc"""
Returns the product of two Fractions

## Examples

    iex> Fraction.mul([1,2], [3,4])
    %Fraction{denominator: 8, numerator: 3}

"""
def mul([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new((x.numerator * y.numerator) , (x.denominator * y.denominator))
end

@doc"""
Returns the quotient of two Fractions

## Examples

    iex> Fraction.fdiv([1,2], [3,4])
    %Fraction{denominator: 6, numerator: 4}

"""

def fdiv([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new((x.numerator * y.denominator) , (x.denominator * y.numerator))
end

@doc"""
Returns the reciprocal of a Fraction

## Examples

    iex> Fraction.reciprocal([3,4])
    %Fraction{denominator: 3, numerator: 4}

"""


def reciprocal([a, b]) do
  Fraction.new(b, a);
end

@doc"""
Returns the GCD(greatest common divisor) of two Fractions

## Examples

    iex> Fraction.fgcd([3,4], [1,2])
    %Fraction{denominator: 4, numerator: 1}

"""

def fgcd([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new(Integer.gcd(x.numerator , y.numerator) , Kernel.div((x.denominator * y.denominator), Integer.gcd(x.denominator, y.denominator)))
end

@doc"""
Returns the LCM(least common multiple) of two Fractions

## Examples

    iex> Fraction.flcm([3,4], [1,2])
    %Fraction{denominator: 2, numerator: 3}

"""
def flcm([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new( Kernel.div((x.numerator * y.numerator), Integer.gcd(x.numerator, y.numerator)), Integer.gcd(x.denominator , y.denominator))
end


@doc"""
Returns the decimal value of a given fraction

## Examples

    iex> Fraction.frac_to_dec([7, 2])
    3.5

"""
def frac_to_dec([a, b]) do
  x = Fraction.new(a, b);
  dec = a / b
end
end
