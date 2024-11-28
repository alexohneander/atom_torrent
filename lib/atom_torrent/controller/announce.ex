defmodule AtomTorrent.Controller.Announce do
  import Plug.Conn
  require Logger

  def announce(conn) do
    # Parse the request parameters
    info_hash = conn.params["info_hash"]
    peer_id = conn.params["peer_id"]

    if info_hash != nil && peer_id != nil do
      # Return a response
      decoded_info = Bento.decode(info_hash)
      Logger.info(decoded_info)

      resp(conn, 200, "Announce")

      # Bento.Parser.
    end

    resp(conn, 500, "Announce")
  end
end
