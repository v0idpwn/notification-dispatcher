defmodule NotificationDispatcher.Application do
  @moduledoc false

  use Application

  def start(_type, _opts) do
    DynamicSupervisor.start_link(strategy: :one_for_one)
  end
end
