defmodule WhatWouldDerekSay.InputView do
  use WhatWouldDerekSay.Web, :view

  def render("index.json", %{response: response}) do
    %{
      data: %{
        response: response
      }
    }
  end

  def render("index.json", _assigns) do
    %{
      data: %{
        error: "No message"
      }
    }
  end
end
