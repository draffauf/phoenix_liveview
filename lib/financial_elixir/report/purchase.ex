defmodule FinancialElixir.Report.Purchase do
  use Ecto.Schema
  import Ecto.Changeset

  schema "purchases" do
    field :name, :string
    field :price, :decimal

    timestamps()
  end

  @doc false
  def changeset(purchase, attrs) do
    purchase
    |> cast(attrs, [:name, :price])
    |> validate_required([:name, :price])
  end
end
