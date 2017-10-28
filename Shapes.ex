defmodule Shape do
  @pi 3.14159
  defstruct [:area, :perimeter]
  def square(n), do: %Shape{area: n * n, perimeter: 4 * n}
  def rectangle(n,m), do: %Shape{area: n * m, perimeter: 2 * (n + m)}
  def circle(r), do: %Shape{area: @pi * :math.pow(r, 2), perimeter: @pi * 2 * r}


end
