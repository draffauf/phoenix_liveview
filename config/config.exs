# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Repo config
config :financial_elixir, ecto_repos: [FinancialElixir.Repo]

# Configures the endpoint
config :financial_elixir, FinancialElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "44PcDgUakYawcgjJqPUJ836FcHw95KjXf70Ip8uFF916WJDKO6BEABhUBsKb4XJH",
  render_errors: [view: FinancialElixirWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FinancialElixir.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "5zpTSUSV2hEpVkIMRQFii7A1w6/i/B9k"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Render leex files with the LiveView Enginer
config :phoenix, template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
