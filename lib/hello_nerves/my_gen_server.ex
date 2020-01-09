defmodule MyGenServer do
  use GenServer

  def start_link(opts) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_call(_whatever, _from, state) do
    {:reply, %{}, state}
  end

  def handle_cast(_whatever, state) do
    {:noreply, state}
  end
end
