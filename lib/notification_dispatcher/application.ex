defmodule NotificationDispatcher.Application do
  @moduledoc false

  use Application

  def start(_type, _opts) do
    children = [
      {Cluster.Supervisor, [Application.fetch_env!(:libcluster, :topologies)]},
      {Horde.Registry, [name: NotificationDispatcher.HordeRegistry, keys: :unique]},
      {Horde.DynamicSupervisor,
       [name: NotificationDispatcher.HordeSupervisor, strategy: :one_for_one]}
    ]

    Supervisor.start_link(children,
      name: NotificationDispatcher.Supervisor,
      strategy: :one_for_one
    )
  end
end
