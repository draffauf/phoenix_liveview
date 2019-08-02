defmodule FinancialElixirWeb.Resolvers.Report do
  alias FinancialElixir.Report

  def purchases(_root, _args, _info) do
    {:ok, Report.list_purchases()}
  end

  def purchase(_root, %{id: id}, _info) do
    {:ok, Report.get_purchase!(id)}
  end

  def create_purchase(_root, args, _info) do
    case Report.create_purchase(args) do
      {:ok, purchase} ->
        {:ok, purchase}
      _error ->
        {:error, "could not create purchase"}
    end
  end

  # TODO, don't self reference, use REPORT to fetch
  def update_purchase(_root, %{id: id, purchase: purchase_params}, _info) do
    case purchase(_root, %{id: id}, _info) do
      {:ok, purchase} -> purchase |> Report.update_purchase(purchase_params)
      {:error, _} -> {:error, "could not update purchase"}
    end
  end

  # TODO, don't self reference, use REPORT to fetch
  def delete_purchase(_root, %{id: id}, _info) do
    case purchase(_root, %{id: id}, _info) do
      {:ok, purchase} -> purchase |> Report.delete_purchase()
      {:error, _} -> {:error, "could not update purchase"}
    end
  end
end
