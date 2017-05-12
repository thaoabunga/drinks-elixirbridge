defmodule TestApp.Drink do
  use TestApp.Web, :model

  schema "drinks" do
    field :name, :string
    field :temperature, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :temperature])
    |> validate_required([:name, :temperature])
  end
end
