defmodule ExJenga.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_jenga,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      description: "Payment Library for Equity Bank's Jenga API in Kenya.",
      package: package(),
      deps: deps(),
      name: "ExJenga",
      source_url: "https://github.com/beamkenya/ex_jenga.git",
      docs: [
        # The main page in the docs
        main: "readme",
        canonical: "http://hexdocs.pm/ex_jenga",
        source_url: "https://github.com/beamkenya/ex_jenga.git",
        logo: "assets/logo.png",
        assets: "assets",
        extras: ["README.md", "contributing.md"]
      ],
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  defp package do
    [
      name: "ex_jenga",
      maintainers: [
        "Paul Oguda, Magak Emmanuel, Tracey Onim, Anthony Leiro, Frank Midigo, Evans Okoth, Getty Orawo "
      ],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/beamkenya/ex_jenga.git",
        "README" => "https://hexdocs.pm/ex_jenga/readme.html"
      },
      homepage_url: "https://github.com/beamkenya/ex_jenga.git"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ExJenga.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.3.0"},
      {:hackney, "~> 1.16.0"},
      {:jason, ">= 1.0.0"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:excoveralls, "~> 0.10", only: :test}
    ]
  end
end
