use Mix.Config

# Database config
config :financial_elixir, FinancialElixir.Repo,
  username: "",
  password: "",
  database: "phoenix_test",
  hostname: "localhost",
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :financial_elixir, FinancialElixirWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
