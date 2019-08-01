defmodule FinancialElixir.Repo.Migrations.Createpurchases do
  use Ecto.Migration

  def change do
    create table(:purchases) do
      add :name, :string
      add :price, :decimal

      timestamps()
    end

  end
end
