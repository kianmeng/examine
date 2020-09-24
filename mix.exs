defmodule Examine.MixProject do
  use Mix.Project

  def project do
    [
      app: :examine,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: "Enhanced inspect debugging.",
      source_url: "https://github.com/mbgardner/examine"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    []
  end

  defp package() do
    [
      maintainers: ["Matthew Gardner"],
      # These are the default files included in the package
      files: ~w(lib priv .formatter.exs mix.exs README* readme* LICENSE*
                license* CHANGELOG* changelog* src),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mbgardner/examine"}
    ]
  end
end
