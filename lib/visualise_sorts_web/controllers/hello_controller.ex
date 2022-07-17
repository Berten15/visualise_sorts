defmodule VisualiseSortsWeb.HelloController do
  use VisualiseSortsWeb, :controller

  # plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
