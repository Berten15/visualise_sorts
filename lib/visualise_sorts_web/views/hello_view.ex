defmodule VisualiseSortsWeb.HelloView do
  use VisualiseSortsWeb, :view

  def getData() do
    Enum.to_list(1..100)
  end
end
