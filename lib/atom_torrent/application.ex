defmodule AtomTorrent.Application do
  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: AtomTorrent.Router, options: [port: 4000]}
    ]

    opts = [strategy: :one_for_one, name: AtomTorrent.Supervisor]
    Logger.info("starting the application...")
    Supervisor.start_link(children, opts)
  end
end
