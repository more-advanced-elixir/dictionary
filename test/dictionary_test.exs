defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  test "Words are returned" do
    word = Dictionary.random_word()
    assert is_binary(word)
    assert String.length(word) >= 4
    assert word =~ ~r/^[a-zA-Z']+$/
  end

end
