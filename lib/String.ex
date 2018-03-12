defmodule StringManipulations do
  @moduledoc"""
  A module to perform operations on Strings.
  """
  @doc"""
  Takes two strings and concatenates them element-wise.

  ## Examples

      iex> StringManipulations.add("Elixir", "Lang")
      ["EL", "la", "in", "xg"]
  """
  @spec add(String.t, String.t) :: list
  def add(s1, s2) do
    Enum.zip(String.graphemes(s1), String.graphemes(s2)) |>
    Enum.map(fn x -> Tuple.to_list(x) end) |>
    Enum.map(fn x -> Enum.reduce(x |> Enum.reverse, fn(y, acc) -> y <> "" <> acc end) end) #|>
    #List.to_string
  end

  @doc"""
  Return (a * i), that is string multiple concatenation, element-wise.

  ## Examples

      iex> StringManipulations.multiply("Elixir", 3)
      ["EEE", "lll", "iii", "xxx", "iii", "rrr"]

  """
  @spec multiply(String.t, integer) :: list
  def multiply(s1, n) do
    cond do
      n === 0 -> ""
      n > 0 ->
        String.graphemes(s1) |>
        Enum.map(fn x -> String.duplicate(x, n) end) #|>
        #List.to_string
    end
  end

  @doc"""
  Return a copy of s1 with its elements centered in a string of length width..

  ## Examples

      iex> StringManipulations.center("Elixir", 5)
      "Elixi"
  """
  @spec center(String.t, integer) :: String.t
  def center(s1, n) do
    String.graphemes(s1) |>
    Enum.take(n) |>
    List.to_string
  end

  @doc"""
  Return a string which is the concatenation of the strings in the sequence seq.

  ## Examples

      iex> StringManipulations.join("Elixir", "Lang")
      "LElixiraElixirnElixirg"
  """
  @spec join(String.t, String.t) :: String.t
  def join(s1, seq) do
    k = String.graphemes(seq)
    s = Enum.take(k, String.length(seq) -1) |>
        Enum.map(fn x -> x <> "" <> s1 end) |>
        List.to_string
    s <> "" <> List.to_string(Enum.take(k, -1))
  end


end
