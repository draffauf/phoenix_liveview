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

  mutation do
    field :create_purchase, :purchase do
      arg :name, non_null(:string)
      arg :price, non_null(:float)

      resolve &FinancialElixirWeb.Resolvers.Report.create_purchase/3
    end

    field :update_purchase, :purchase do
      arg :id, non_null(:integer)
      arg :purchase, :update_purchase_params

      resolve  &FinancialElixirWeb.Resolvers.Report.update_purchase/3
    end

    field :delete_purchase, :purchase do
      arg :id, non_null(:integer)

      resolve &FinancialElixirWeb.Resolvers.Report.delete_purchase/3
    end
  end
end
