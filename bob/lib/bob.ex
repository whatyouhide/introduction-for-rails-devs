defmodule Bob do
  @doc """
  Bob is a lackadaisical teenager. In conversation, his responses are very limited.
  Bob answers 'Sure.' if you ask him a question.
  He answers 'Whoa, chill out!' if you yell at him.
  He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
  He says 'Fine. Be that way!' if you address him without actually saying anything.
  He answers 'Whatever.' to anything else.
  """
  def hey(input) do
    shouting? = shouting?(input)
    question? = String.ends_with?(input, "?")

    cond do
      shouting? and question? ->
        "Calm down, I know what I'm doing!"
      question? ->
        "Sure."
      shouting? ->
        "Whoa, chill out!"
      String.trim(input) == "" ->
        "Fine. Be that way!"
      true ->
        "Whatever."
    end
  end

  defp shouting?(input) do
    String.upcase(input) == input and String.match?(input, ~r/\p{L}/u)
  end
end
