defmodule DiscourseClient do
  @moduledoc """
  Simple Discourse API Client Wrapper.
  """
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://elixirforum.com"
  plug Tesla.Middleware.JSON

  def fetch_post(post_id) when is_integer(post_id)  do
    case get("/t/#{post_id}.json") do
      {:ok, %Tesla.Env{status: 200, body: body}} -> {:ok, body}
      {:ok, %Tesla.Env{body: body}}              -> {:error, body}
      {:error, _} = other                        -> other
    end
  end

  def fetch_latest_posts() do
    case get("/posts.json") do
      {:ok, %Tesla.Env{status: 200, body: body}} -> {:ok, body}
      {:ok, %Tesla.Env{body: body}}              -> {:error, body}
      {:error, _} = other                        -> other
    end
  end

end
