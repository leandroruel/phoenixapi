# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :apiebanx,
  ecto_repos: [Apiebanx.Repo]

# Configures the endpoint
config :apiebanx, ApiebanxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "b/JzSlrRcYn0puroiWNWUIkjvj3u25rKMO3LSFSg6ZOmYTLP4uFR6AwRHn16mFqe",
  render_errors: [view: ApiebanxWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Apiebanx.PubSub,
  live_view: [signing_salt: "5QVB1RlS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
