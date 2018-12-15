defmodule Caesar.CipherTest do
	use ExUnit.Case 
	doctest Caesar.Cipher
 
  import Caesar.Cipher

  test "the truth" do
  	assert 1 + 1 == 2
  end

  test "greets the world" do
    assert Caesar.hello() == :world
  end

  test "encrypt shift cipher mapping" do
  	assert encrypt("abcd", 1)  == "zabc"
  	assert encrypt("Abcd", 1)  == "Zabc"
  	assert encrypt("abcD", 27) == "zabC"
  	assert encrypt("ab AB", 1) == "za ZA"
  end

end