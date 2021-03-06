defmodule FinancialElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :financial_elixir,
      version: "0.1.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {FinancialElixir.Application, []},
      extra_applications: [:logger, :runtime_tools, :phoenix_ecto, :absinthe_plug]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:absinthe, "~> 1.4.2"},
      {:absinthe_plug, "~> 1.4"},
      {:absinthe_phoenix, "~> 1.4.0"},
      {:ecto_sql, "~> 3.1"},
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.0"},
      {:myxql, ">= 0.0.0"},
      {:phoenix, "~> 1.4.9"},
      {:phoenix_ecto, "~> 4.0"},
      {:phoenix_pubsub, "~> 1.1"},
      {:phoenix_html, "~> 2.11"},
      {:phoenix_live_view, github: "phoenixframework/phoenix_live_view"},
      {:plug_cowboy, "~> 2.0"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:earmark, "~> 1.2", only: :dev},
      {:ex_doc, "~> 0.19", only: :dev}
    ]
  end
end
