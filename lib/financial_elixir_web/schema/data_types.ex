defmodule FinancialElixirWeb.Schema.DataTypes do
  use Absinthe.Schema.Notation

  object :purchase do
    field :id, :id
    field :name, :string
    field :price, :float
  end

  input_object :update_purchase_params do
    field :name, non_null(:string)
    field :price, non_null(:float)
  end
end
