defmodule FinancialElixirWeb.Schema do
  use Absinthe.Schema

  import_types FinancialElixirWeb.Schema.DataTypes

  query do
    @desc "Get a list of purchases"
    field :purchases, list_of(:purchase) do
      resolve &FinancialElixirWeb.Resolvers.Report.purchases/3
    end

    @desc "Get a purchase by id"
    field :purchase, :purchase do
      arg :id, non_null(:id)
      resolve &FinancialElixirWeb.Resolvers.Report.purchase/3
    end
  end

end
