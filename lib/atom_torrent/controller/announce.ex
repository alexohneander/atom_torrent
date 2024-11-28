defmodule AtomTorrent.Controller.Announce do
  import Plug.Conn
  require Logger

  def announce(conn) do
    # Parse the request parameters
    info_hash = conn.params["info_hash"]
    peer_id = conn.params["peer_id"]

    peer = %AtomTorrent.Schema.Peer{
      info_hash: info_hash,
      peer_id:  peer_id
    }

    AtomTorrent.Repo.insert(peer)
    Logger.info(peer)

    resp(conn, 500, "Announce")
  end
end
