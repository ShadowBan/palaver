defmodule Scraper.Supervisor do
  use Supervisor.Behaviour

  # A convenience to start the supervisor
  def start_link(queue) do
    :supervisor.start_link(__MODULE__, queue)
  end

  # The callback invoked when the supervisor starts
  def init(queue) do
    children = [ worker(Scraper.Server, [queue]) ]
    supervise children, strategy: :one_for_one
  end
end