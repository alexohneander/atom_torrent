defmodule AtomTorrent.Router do
  use Plug.Router
  require Logger

  plug :match
  plug :dispatch

  get "/" do
    Logger.info("Get /")
    send_resp(conn, 200, "Hello World")
  end

  # Torrent Endpoints
  get "/announce" do
    Logger.info("Get /announce")
    conn = fetch_query_params(conn)
    AtomTorrent.Controller.Announce.announce(conn)
  end

  get "/scrape" do
    Logger.info("Get /scrape")
    send_resp(conn, 200, "Scrape")
  end

  match _ do
    Logger.info("Page not found")
    send_resp(conn, 404, "Not found")
  end
end
