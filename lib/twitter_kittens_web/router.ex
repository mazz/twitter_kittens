defmodule TwitterKittensWeb.Router do
  use TwitterKittensWeb, :router
  alias TwitterKittensWeb.Plugs
  
  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Plugs.AssignCurrentUser
    plug Plugs.ConfigureTwitterClient

  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TwitterKittensWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/auth/request", AuthController, :request
    get "/auth/callback", AuthController, :callback
    get "/auth/logout", AuthController, :logout

    resources "/tweets", TweetController, only: [:index, :create]
  end

  # Other scopes may use custom stacks.
  # scope "/api", TwitterKittensWeb do
  #   pipe_through :api
  # end
end
