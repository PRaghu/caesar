defmodule CaesarTest do
  use ExUnit.Case
  doctest Caesar

  test "greets the world" do
    assert Caesar.hello() == :world
  end

  test "parse_args help" do
  	argv = ["help"]
  	assert Caesar.parse_args(argv) == {:help}
  end
  
  test "parse_args encrypt" do
  	argv = ["encrypt", "pqrs", "--shift", "1"]
  	assert Caesar.parse_args(argv) == {:encrypt, "pqrs", 1}
  end
end
