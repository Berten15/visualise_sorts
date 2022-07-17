import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :visualise_sorts, VisualiseSorts.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "visualise_sorts_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :visualise_sorts, VisualiseSortsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "R5+A0n5FSDrgW1avp0OmqmYpjC0/gak7IthUcnsV5l1ZTAem84fJAMr9AR2tXsuI",
  server: false

# In test we don't send emails.
config :visualise_sorts, VisualiseSorts.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
