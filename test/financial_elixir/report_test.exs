defmodule FinancialElixir.ReportTest do
  use FinancialElixir.DataCase

  alias FinancialElixir.Report

  describe "purchases" do
    alias FinancialElixir.Report.Purchase

    @valid_attrs %{name: "some name", price: "120.5"}
    @update_attrs %{name: "some updated name", price: "456.7"}
    @invalid_attrs %{name: nil, price: nil}

    def purchase_fixture(attrs \\ %{}) do
      {:ok, purchase} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Report.create_purchase()

      purchase
    end

    test "list_purchases/0 returns all purchases" do
      purchase = purchase_fixture()
      assert Report.list_purchases() == [purchase]
    end

    test "get_purchase!/1 returns the purchase with given id" do
      purchase = purchase_fixture()
      assert Report.get_purchase!(purchase.id) == purchase
    end

    test "create_purchase/1 with valid data creates a purchase" do
      assert {:ok, %Purchase{} = purchase} = Report.create_purchase(@valid_attrs)
      assert purchase.name == "some name"
      assert purchase.price == Decimal.new("120.5")
    end

    test "create_purchase/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Report.create_purchase(@invalid_attrs)
    end

    test "update_purchase/2 with valid data updates the purchase" do
      purchase = purchase_fixture()
      assert {:ok, %Purchase{} = purchase} = Report.update_purchase(purchase, @update_attrs)
      assert purchase.name == "some updated name"
      assert purchase.price == Decimal.new("456.7")
    end

    test "update_purchase/2 with invalid data returns error changeset" do
      purchase = purchase_fixture()
      assert {:error, %Ecto.Changeset{}} = Report.update_purchase(purchase, @invalid_attrs)
      assert purchase == Report.get_purchase!(purchase.id)
    end

    test "delete_purchase/1 deletes the purchase" do
      purchase = purchase_fixture()
      assert {:ok, %Purchase{}} = Report.delete_purchase(purchase)
      assert_raise Ecto.NoResultsError, fn -> Report.get_purchase!(purchase.id) end
    end

    test "change_purchase/1 returns a purchase changeset" do
      purchase = purchase_fixture()
      assert %Ecto.Changeset{} = Report.change_purchase(purchase)
    end
  end
end
