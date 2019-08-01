alias FinancialElixir.Repo
alias FinancialElixir.Report.Purchase

%Purchase{
  name: "Pizza",
  price: 15.50,
} |> Repo.insert!

%Purchase{
  name: "Laptop",
  price: 3000.00,
} |> Repo.insert!

%Purchase{
  name: "House",
  price: 300000.00,
} |> Repo.insert!
