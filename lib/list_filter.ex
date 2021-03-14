defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.filter(&parse_integer/1)
    |> Enum.count()
  end

  defp parse_integer(elem) do
    case Integer.parse(elem) do
      {int, _rest} -> Integer.is_odd(int)
      :error -> nil
    end
  end
end
