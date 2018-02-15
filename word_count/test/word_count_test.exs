defmodule WordCountTest do
  use ExUnit.Case

  @tag :skip
  test "count one word" do
    assert WordCount.count("word") == %{"word" => 1}
  end

  @tag :skip
  test "count one of each" do
    expected = %{"one" => 1, "of" => 1, "each" => 1}
    assert WordCount.count("one of each") == expected
  end

  @tag :skip
  test "count multiple occurrences" do
    expected = %{"one" => 1, "fish" => 4, "two" => 1, "red" => 1, "blue" => 1}
    assert WordCount.count("one fish two fish red fish blue fish") == expected
  end

  @tag :skip
  test "ignore punctuation" do
    expected = %{"car" => 1, "carpet" => 1, "as" => 1, "java" => 1, "javascript" => 1}
    assert WordCount.count("car : carpet as java : javascript!!&@$%^&") == expected
  end

  @tag :skip
  test "include numbers" do
    expected = %{"testing" => 2, "1" => 1, "2" => 1}
    assert WordCount.count("testing, 1, 2 testing") == expected
  end

  @tag :skip
  test "hyphens" do
    expected = %{"co-operative" => 1}
    assert WordCount.count("co-operative") == expected
  end

  @tag :skip
  test "ignore underscores" do
    expected = %{"two" => 1, "words" => 1}
    assert WordCount.count("two_words") == expected
  end

  @tag :skip
  test "normalize case" do
    expected = %{"go" => 3}
    assert WordCount.count("go Go GO") == expected
  end

  @tag :skip
  test "German" do
    expected = %{"götterfunken" => 1, "schöner" => 1, "freude" => 1}
    assert WordCount.count("Freude schöner Götterfunken") == expected
  end
end