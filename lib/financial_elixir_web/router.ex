defmodule FinancialElixirWeb.Router do
  use FinancialElixirWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :put_layout, {FinancialElixirWeb.LayoutView, :app}
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FinancialElixirWeb do
    pipe_through :browser

    # get "/", PageController, :index
    live("/", CounterLive)
  end

  # Other scopes may use custom stacks.
  # scope "/api", FinancialElixirWeb do
  #   pipe_through :api
  # end
end
