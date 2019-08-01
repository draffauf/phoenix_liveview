defmodule FinancialElixir.Repo do
  use Ecto.Repo,
    otp_app: :financial_elixir,
    adapter: Ecto.Adapters.MyXQL
end
