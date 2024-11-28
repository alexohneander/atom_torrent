import Config

config :atom_torrent, AtomTorrent.Repo,
  adapter: Ecto.Adapters.SQLite3,
  database: "atom.db"

config :atom_torrent, ecto_repos: [AtomTorrent.Repo]
