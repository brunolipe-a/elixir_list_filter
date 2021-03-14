defmodule ListFilterTest do
  use ExUnit.Case

  test "returns count of elements that are a number and odd from a list" do
    list = ["1", "3", "6", "43", "banana", "6", "abc"]

    response = ListFilter.call(list)

    assert response == 3
  end

  test "returns count of elements that are a number and odd from a list of numbers" do
    list = ["1", "3", "6", "43", "123", "898", "11"]

    response = ListFilter.call(list)

    assert response == 5
  end
end
