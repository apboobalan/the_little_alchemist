# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :the_little_alchemist,
  ecto_repos: [TheLittleAlchemist.Repo]

# Configures the endpoint
config :the_little_alchemist, TheLittleAlchemistWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "K7OO+ztMW9C57FcjhR3atzxq6J7zDo5hf/13xISEBa6Qvp3Z0IARfZWgx1n9LkN8",
  render_errors: [view: TheLittleAlchemistWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TheLittleAlchemist.PubSub,
  live_view: [signing_salt: "w+fktREw"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
