defmodule RiddlerTest do
  use ExUnit.Case
  doctest Riddler

  test "greets the world" do
    assert Riddler.hello() == :world
  end
end
