defmodule FinancialElixirWeb.PageController do
  use FinancialElixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
