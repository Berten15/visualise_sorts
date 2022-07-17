defmodule VisualiseSorts.Repo do
  use Ecto.Repo,
    otp_app: :visualise_sorts,
    adapter: Ecto.Adapters.Postgres
end
