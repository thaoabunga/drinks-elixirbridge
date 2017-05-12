defmodule TestApp.DrinkTest do
  use TestApp.ModelCase

  alias TestApp.Drink

  @valid_attrs %{name: "some content", temperature: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Drink.changeset(%Drink{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Drink.changeset(%Drink{}, @invalid_attrs)
    refute changeset.valid?
  end
end
