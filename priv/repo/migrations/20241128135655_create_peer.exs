defmodule AtomTorrent.Repo.Migrations.CreatePeer do
  use Ecto.Migration

  def change do
    create table(:peer) do
      add :info_hash, :string
      add :peer_id, :string
      add :ip, :string
      add :port, :integer
      add :uploaded, :integer
      add :downloaded, :integer
      add :left, :integer
      add :event, :string
      add :numwant, :integer
      timestamps()
    end
  end
end
