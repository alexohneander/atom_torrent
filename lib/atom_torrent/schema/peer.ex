defmodule AtomTorrent.Schema.Peer do
  use Ecto.Schema

  # weather is the DB table
  schema "peer" do
    field :info_hash, :string
    field :peer_id, :string
    field :ip, :string
    field :port, :integer
    field :uploaded, :integer
    field :downloaded, :integer
    field :left, :integer
    field :event, :string
    field :numwant, :integer
  end
end
