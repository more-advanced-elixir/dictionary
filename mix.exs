defmodule Dictionary.Mixfile do
  use Mix.Project

  def project do
    [
      app: :dictionary,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: { Dictionary.Application, [] },
      extra_applications: [:logger]
    ]
  end

  @mae_ref "ex-030-add-gallows"

  defp deps do
    [
      {
        :arcade,
        github: "more-advanced-elixir/arcade",
        runtime: false,
        ref:     @mae_ref,
      },
      { :swarm, "~> 3.0" },
    ]
  end
end
