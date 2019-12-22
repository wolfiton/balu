defmodule BaluWeb.Router do
  use BaluWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BaluWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources("/posts", PostController)
    resources("/categories", CategoryController)
  end

  # Other scopes may use custom stacks.
  # scope "/api", BaluWeb do
  #   pipe_through :api
  # end
end
