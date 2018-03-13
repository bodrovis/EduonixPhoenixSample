defmodule PhoenixSampleWeb.AlbumsController do
  alias PhoenixSample.{Repo, Album}
  use PhoenixSampleWeb, :controller
  import Ecto.Query

  def index(conn, _params) do
    render conn, "index.html",
    albums: Repo.all(from a in Album,
    select: %{:name => a.name, :singer => a.singer, :tracks => a.track_count})
  end
end
