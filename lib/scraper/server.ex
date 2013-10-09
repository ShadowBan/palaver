defmodule Scraper.Server do
  use GenServer.Behaviour

  def start_link(queue) do
    :gen_server.start_link({ :local, :scraper }, __MODULE__, queue, [])
  end

  def init(queue) do
    :inets.start()
    { :ok, queue }
  end

  def handle_call(:pop, _from, [h|queue]) do
    { :reply, :httpc.request(:get, {h, []}, [{:connect_timeout, 10000}], []), queue }
  end

  def handle_cast({ :push, new }, queue) do
    { :noreply, queue ++ [new]}
  end
end