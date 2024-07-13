defmodule DcaPhx.Umbrella.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      releases: releases(),
      name: "DcaPhxUmbrella",
      source_url: "https://github.com/Taraluktus/dca_phx_umbrella",
      docs: [
        # The main page in the docs
        main: "DCA Phoenix Umbrella",
        # logo: "path/to/logo.png",
        extras: ["README.md"]
      ]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options.
  #
  # Dependencies listed here are available only for this project
  # and cannot be accessed from applications inside the apps/ folder.
  defp deps do
    [
      # Required to run "mix format" on ~H/.heex files from the umbrella root
      # TODO bump on release to {:phoenix_live_view, ">= 0.0.0"},
      {:phoenix_live_view, "~> 1.0.0-rc.6", override: true},
      {:credo, "~> 1.7", only: :dev, runtime: false},
      {:dialyxir, "~> 1.4", only: :dev, runtime: false},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  #
  # Aliases listed here are available only for this project
  # and cannot be accessed from applications inside the apps/ folder.
  defp aliases do
    [
      # run `mix setup` in all child apps
      setup: ["cmd mix setup"]
    ]
  end

  # Umbrella projects require releases to be explicitly defined with a non-empty applications key that chooses which umbrella children should be part of the releases
  defp releases do
    [
      dca_phx_umbrella: [
        applications: [
          dca_phx: :permanent,
          dca_phx_web: :permanent
        ]
      ]
    ]
  end
end
