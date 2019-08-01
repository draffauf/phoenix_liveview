defmodule FinancialElixirWeb.Schema.DataTypes do
  use Absinthe.Schema.Notation

  object :purchase do
    field :id, :id
    field :name, :string
    field :price, :float
  end
end
