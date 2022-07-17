defmodule VisualiseSortsWeb.PageController do
  use VisualiseSortsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
