defmodule WhatWouldDerekSay.InputController do
  use WhatWouldDerekSay.Web, :controller

  alias WhatWouldDerekSay.Decide

  def index(conn, %{"message" => message}) do
    response = message |> Decide.respond
    render conn, "index.json", response: response
  end

  def index(conn, _params) do
    render conn, "index.json"
  end
end
