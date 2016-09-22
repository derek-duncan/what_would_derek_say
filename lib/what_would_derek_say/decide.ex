defmodule WhatWouldDerekSay.Decide do
  @question_responses [
    "LOL, no!",
    "What the heck, let's do it!"
  ]

  @statement_responses [
    "I think that's a great idea!",
    "I once when to a party where I DJ'd the whole thing spur of the moment and then left on a bicycle. Crazy right? Also, this never happend."
  ]

  def parse_message(message) do
    cond do
      Regex.match?(~r/\?/, message) ->
        {:question, message}
      true ->
        {:statement, message}
    end
  end

  def respond({:question, _message}), do: Enum.random(@question_responses)
  def respond({:statement, _message}), do: Enum.random(@statement_responses)
  def respond(message) when is_binary(message), do: parse_message(message) |> respond
end
