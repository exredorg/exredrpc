defmodule Exredrpc.MixProject do
  use Mix.Project

  @description "Common modules for exred grpc nodes"

  def project do
    [
      app: :exredrpc,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: @description,
      deps: deps()
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
      {:ex_doc, "~> 0.19.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    %{
      licenses: ["MIT"],
      maintainers: ["Zsolt Keszthelyi"],
      links: %{
        "GitHub" => "https://github.com/exredorg/exredrpc.git",
        "Exred" => "http://exred.org"
      },
      files: ["lib", "mix.exs", "README.md", "LICENSE"]
    }
  end
end
