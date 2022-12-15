defmodule Easycalc.LogicTest do
  use ExUnit.Case
  alias Easycalc.Logic
  doctest Logic

  test "sum numbers" do
    assert 10 = Logic.sum(3,7)
  end
  test "substract numbers" do
    assert 2 = Logic.substract(8,6)
  end
  test "multiply numbers" do
    assert 100 = Logic.multiply(20,5)
  end
  test "divide numbers" do
    assert 4 = Logic.divide(12,3)
  end

  test "result of operation" do
    state = {[], 0}
    assert {["num_1"], 1} = Logic.new_operation(state, "num_1")
    assert {["plus", "num_1"], 1} =
      state
      |> Logic.new_operation("num_1")
      |> Logic.new_operation("plus")

    assert {["clear", "num_1"], 0} =
      state
      |> Logic.new_operation("num_1")
      |> Logic.new_operation("clear")

    assert {[ "num_2", "plus", "num_1"], 3} =
      state
      |> Logic.new_operation("num_1")
      |> Logic.new_operation("plus")
      |> Logic.new_operation("num_2")

    assert {[ "num_1", "plus", "num_2", "plus", "num_1"], 4} =
      state
      |> Logic.new_operation("num_1")
      |> Logic.new_operation("plus")
      |> Logic.new_operation("num_2")
      |> Logic.new_operation("plus")
      |> Logic.new_operation("num_1")

    assert {[ "num_1", "minus", "num_1", "plus", "num_2", "plus", "num_1"], 3} =
      state
      |> Logic.new_operation("num_1")
      |> Logic.new_operation("plus")
      |> Logic.new_operation("num_2")
      |> Logic.new_operation("plus")
      |> Logic.new_operation("num_1")
      |> Logic.new_operation("minus")
      |> Logic.new_operation("num_1")
  end
end
