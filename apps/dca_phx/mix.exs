defmodule DcaPhx.MixProject do
  use Mix.Project

  def project do
    [
      app: :dca_phx,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.17",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {DcaPhx.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:dns_cluster, "~> 0.1"},
      {:phoenix_pubsub, "~> 2.1"},
      # {:ecto_sql, "~> 3.11"},
      # {:postgrex, "~> 0.18"},
      {:jason, "~> 1.2"},
      {:ash, "~> 3.1"},
      {:picosat_elixir, "~> 0.2"},
      # {:ash_postgres, "~> 2.1"},
      # {:ecto_psql_extras, "~> 0.8"},
      {:gettext, "~> 0.20"}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      # setup: ["deps.get", "ecto.setup"],
      # "ecto.setup": ["ecto.create", "ecto.migrate", "run #{__DIR__}/priv/repo/seeds.exs"],
      # "ecto.reset": ["ecto.drop", "ecto.setup"],
      # test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"],
      setup: ["deps.get"],
      test: ["test"]
    ]
  end
end
