defmodule PhoenixSample.Repo.Migrations.CreateAlbums do
  use Ecto.Migration

  def change do
    create table(:albums) do
      add :name, :string
      add :singer, :string
      add :track_count, :integer

      timestamps()
    end

  end
end
