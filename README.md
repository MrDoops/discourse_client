# DiscourseClient

Usage:

```elixir
iex> {:ok, post} = DiscourseClient.fetch_post(16897)
{:ok, 
  %{
    ...
  }
}
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `discourse_client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:discourse_client, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/discourse_client](https://hexdocs.pm/discourse_client).

