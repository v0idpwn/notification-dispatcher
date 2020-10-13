defmodule NotificationDispatcherTest do
  use ExUnit.Case
  doctest NotificationDispatcher

  test "greets the world" do
    assert NotificationDispatcher.hello() == :world
  end
end
