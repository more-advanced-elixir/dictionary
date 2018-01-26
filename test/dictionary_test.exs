defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  test "Agent restart" do
    word1 = Dictionary.random_word()

    pid = Process.whereis(Dictionary.WordList)
    Process.flag(:trap_exit, true)
    Dictionary.WordList.die()
    word2 = Dictionary.random_word()

    refute word1 == word2
  end
end
