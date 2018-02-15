defmodule WordCount do
  @doc """
  Count the number of words in the sentence.
  Words are compared case-insensitively.
  """
  def count(sentence) do
    sentence
    |> String.downcase()
    |> String.split(~r/([^\w-]|_)+/u, trim: true)
    |> Enum.group_by(&(&1), fn _ -> 1 end)
    |> Map.new(fn {key, value} -> {key, Enum.count(value)} end)
  end
end
