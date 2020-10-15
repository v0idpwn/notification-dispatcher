defmodule NotificationDispatcher.Application do
  @moduledoc false

  use Application

  def start(_type, _opts) do
    Supervisor.start_link(
    [
      {Cluster.Supervisor, [Application.fetch_env!(:libcluster, :topologies)]}
    ],
    strategy: :one_for_one
    )
  end
end
