# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :twitter_kittens, TwitterKittensWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kwTcSd/8L5YJVpsdmkF5TSj/Z0+CFfXulpWYVCsDN+jRyygehu0AIVUXn6uBXYQG",
  render_errors: [view: TwitterKittensWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TwitterKittens.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :extwitter, :oauth, [
  consumer_key: "Slc78T9bpvVffpmPAiykT4AiZ",
  consumer_secret: "2dRygWsc7GZFajBI2YlOjmbnc2XKudVPRnD2fMC5fhURBRp4LF",
  access_token: "901579715097616386-U0AUTrKNpLHMtwCWo9zPn0h72Y33ecx",
  access_token_secret: "cBN4CIkotdtYngcoOxuDYsIRj14oV6w9IFE7bcid9ayve"
]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
