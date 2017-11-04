defmodule Fraction do
require Integer
defstruct [:numerator, :denominator]

def new(x), do: %Fraction{numerator: x, denominator: 1}
def new(x, y), do: %Fraction{numerator: x, denominator: y}

def to_improper(x,y,z), do: %Fraction{numerator: x * z + y, denominator: z}

def to_mixed(x,y) do
  cond do
    x > y -> {div(x,y), %Fraction{numerator: rem(x,y), denominator: y}}
    x < y -> new(x,y)
  end
end

def add([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new((x.numerator * y.denominator) + (y.numerator * x.denominator), x.denominator * y.denominator)
end

def sub([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new((x.numerator * y.denominator) - (y.numerator * x.denominator), x.denominator * y.denominator)
end

def mul([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new((x.numerator * y.numerator) , (x.denominator * y.denominator))
end

def fdiv([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new((x.numerator * y.denominator) , (x.denominator * y.numerator))
end
def reciprocal([a, b]) do
  Fraction.new(b, a);
end

def fgcd([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new(Integer.gcd(x.numerator , y.numerator) , Kernel.div((x.denominator * y.denominator), Integer.gcd(x.denominator, y.denominator)))
end

def flcm([a, b], [c, d]) do
  x = Fraction.new(a, b);
  y = Fraction.new(c, d);
  Fraction.new( Kernel.div((x.numerator * y.numerator), Integer.gcd(x.numerator, y.numerator)), Integer.gcd(x.denominator , y.denominator))
end


end
