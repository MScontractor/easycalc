defmodule Easycalc.Buttons do

  def all() do
    [
      {"C", "clear"},
      {"()", "noop"},
      {"%", "percent"},
      {"/", "div"},
      {"7", "num_7"},
      {"8", "num_8"},
      {"9", "num_9"},
      {"x", "mult"},
      {"4", "num_4"},
      {"5", "num_5"},
      {"6", "num_6"},
      {"-", "minus"},
      {"1", "num_1"},
      {"2", "num_2"},
      {"3", "num_3"},
      {"+", "plus"},
      {"+/-", "invert"},
      {"0", "num_0"},
      {".", "dot"},
      {"+", "equal"}
    ]
  end
  def parse_value(code) do
    case code do
      "clear" -> "C"
      "percent" -> :percent
      "div" -> "/"
      "minus" -> "-"
      "plus" -> "+"
      "invert" -> ""
      "dot" -> "."
      "equal" -> "="
      "mult" -> "x"
      "num_0" -> "0"
      "num_1" -> "1"
      "num_2" -> "2"
      "num_3" -> "3"
      "num_4" -> "4"
      "num_5" -> "5"
      "num_6" -> "6"
      "num_7" -> "7"
      "num_8" -> "8"
      "num_9" -> "9"
      num when is_number(num) -> num
    end
  end
end
