defmodule Easycalc.Logic do

  def sum(a,b), do: a+b
  def substract(a,b), do: a-b
  def multiply(a,b), do: a*b
  def divide(a,b), do: Kernel.div(a,b)

  def new_operation({queue, _result}, operation) do
    queue = [operation | queue]
    {queue, parse_operation(Enum.reverse(queue))}
  end

  def parse_operation([]), do: []

  def parse_operation([value]) do
    value = parse_code(value)
    if is_atom(value) do
      0
    else
      value
    end
  end

  def parse_operation([num, op]) do
    case {parse_code(num), parse_code(op)} do
      {_num, :clear}  -> 0
      {num, :invert}  -> -num
      {num, :equal}  -> num
      {num, _op} -> num
    end
  end

  def parse_operation([num, op, num2]) do
    case {parse_code(num), parse_code(op), parse_code(num2)} do
      {_num, :clear, _num2}  -> 0
      {num, :invert, _num2}  -> -num
      {num, :equal, _num2}  -> num
      {num, :plus, num2} -> sum(num, num2)
      {num, :minus, num2} -> substract(num, num2)
      {num, :div, num2} -> divide(num, num2)
      {num, :mult, num2} -> multiply(num, num2)
    end
  end

  def parse_operation([num, op, num2 | queue]) do
    [parse_operation([num, op, num2]) | queue]
    |> parse_operation()
  end

  def parse_code(code) do
    case code do
      "clear" -> :clear
      "noop" -> :noop
      "percent" -> :percent
      "div" -> :div
      "minus" -> :minus
      "plus" -> :plus
      "invert" -> :inverts
      "dot" -> :dot
      "equal" -> :equal
      "mult" -> :mult
      "num_0" -> 0
      "num_1" -> 1
      "num_2" -> 2
      "num_3" -> 3
      "num_4" -> 4
      "num_5" -> 5
      "num_6" -> 6
      "num_7" -> 7
      "num_8" -> 8
      "num_9" -> 9
      num when is_number(num) -> num
    end
  end
end
