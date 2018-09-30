defmodule DiscourseClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :discourse_client,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {DiscourseClient.Application, []}
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.1"},
      {:tesla, "~> 1.1"},
    ]
  end
end
