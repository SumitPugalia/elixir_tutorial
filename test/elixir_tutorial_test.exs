defmodule ElixirTutorialTest do
  use ExUnit.Case
  doctest ElixirTutorial

  test "greets the world" do
    assert ElixirTutorial.hello() == :world
  end
end
