defmodule Yuki.MixProject do
  use Mix.Project

  def project do
    [
      app: :yuki,
      version: "0.3.0",
      elixir: "~> 1.9",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      description: "Simple CSV and TSV parser (NimbleCSV wrapper)",
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp package do
    [
      maintainers: ["Alexey Terekhov"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/tap349/yuki"},
      # > <https://hex.pm/docs/publish>
      # >
      # > When running the command to publish a package, Hex will
      # > create a tar file of all the files and directories listed
      # > in the :files property
      #
      # => don't add priv, test, .gitignore and docker-compose.yml
      # because they are required for running tests only - in that
      # case a way to go is to clone repository from GitHub
      files: ~w(
        lib
        .formatter.exs
        CHANGELOG.md
        LICENSE.md
        README.md
        mix.exs
      )
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:nimble_csv, "~> 0.6"}
    ]
  end
end
