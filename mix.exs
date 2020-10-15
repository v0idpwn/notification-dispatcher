defmodule NotificationDispatcher.MixProject do
  use Mix.Project

  def project do
    [
      app: :notification_dispatcher,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {NotificationDispatcher.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:broadway, "~> 0.6"},
      {:libcluster, "~> 3.2.1"}
    ]
  end
end
