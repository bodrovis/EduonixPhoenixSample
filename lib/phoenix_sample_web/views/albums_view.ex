defmodule PhoenixSampleWeb.AlbumsView do
  use PhoenixSampleWeb, :view

  def keys(albums) do
    albums
    |> Map.keys()
  end
end
