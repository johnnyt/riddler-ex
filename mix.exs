defmodule Riddler.MixProject do
  use Mix.Project

  def project do
    [
      app: :riddler,
      version: "0.0.1",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      docs: [extras: ["README.md"]],
      dialyzer: [plt_add_deps: :transitive],
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  def description, do: "Riddler in Elixir"

  def package do
    [
      name: :riddler,
      maintainers: ["JohnnyT"],
      licenses: ["MIT"],
      docs: [extras: ["README.md"]],
      links: %{"GitHub" => "https://github.com/riddler/riddler-ex"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
