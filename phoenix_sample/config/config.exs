# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_sample,
  ecto_repos: [PhoenixSample.Repo]

# Configures the endpoint
config :phoenix_sample, PhoenixSample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "769AqfR9yoHAjai9ZLF89Qk2C2hAVnBmeuVT0t80EW6g8K6rx040HteENp6Q8796",
  render_errors: [view: PhoenixSample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixSample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
