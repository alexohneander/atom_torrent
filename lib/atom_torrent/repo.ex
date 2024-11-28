defmodule AtomTorrent.Repo do
  use Ecto.Repo,
    otp_app: :atom_torrent,
    adapter: Ecto.Adapters.SQLite3
end
