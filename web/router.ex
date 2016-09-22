defmodule WhatWouldDerekSay.Router do
  use WhatWouldDerekSay.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WhatWouldDerekSay do
    pipe_through :api # Use the default browser stack

    get "/", InputController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", WhatWouldDerekSay do
  #   pipe_through :api
  # end
end
