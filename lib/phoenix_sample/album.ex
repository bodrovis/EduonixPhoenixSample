defmodule PhoenixSample.Album do
  use Ecto.Schema
  import Ecto.Changeset


  schema "albums" do
    field :name, :string
    field :singer, :string
    field :track_count, :integer

    timestamps()
  end

  @doc false
  def changeset(album, attrs) do
    album
    |> cast(attrs, [:name, :singer, :track_count])
    |> validate_required([:name, :singer, :track_count])
  end
end
