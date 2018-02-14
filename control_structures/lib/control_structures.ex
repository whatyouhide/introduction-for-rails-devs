defmodule ControlStructures do
  @doc """
  Should return the Fibonacci number at position `n`.

  ## Examples

      iex> fibonacci(1)
      1
      iex> fibonacci(2)
      1
      iex> fibonacci(4)
      3

  """
  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(n), do: fibonacci(n - 1) + fibonacci(n - 2)

  @doc """
  Should return the length of the given `list`.

  ## Examples

      iex> list_length([])
      0
      iex> list_length([1])
      1
      iex> list_length([1, 2, 3])
      3

  """
  def list_length([]), do: 0
  def list_length([_ | rest]), do: 1 + list_length(rest)
end
