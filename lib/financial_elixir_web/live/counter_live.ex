defmodule FinancialElixirWeb.CounterLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <div>
      <h1>Count: <%= @value %></h1>
      <button phx-click="decrement">-</button>
      <button phx-click="increment">+</button>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, assign(socket, :value, 0)}
  end

  def handle_event("increment", _value, socket) do
    {:noreply, update(socket, :value, &(&1 + 1))}
  end

  def handle_event("decrement", _value, socket) do
    {:noreply, update(socket, :value, &(&1 - 1))}
  end
end