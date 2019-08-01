defmodule FinancialElixirWeb.Resolvers.Report do
  alias FinancialElixir.Report

  def purchases(_, _, _) do
    {:ok, Report.list_purchases()}
  end

  def purchase(_, %{id: id}, _) do
    {:ok, Report.get_purchase!(id)}
  end
end
