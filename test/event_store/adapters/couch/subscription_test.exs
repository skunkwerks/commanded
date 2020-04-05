defmodule Commanded.EventStore.Adapters.Couch.SubscriptionTest do
  alias Commanded.EventStore.Adapters.Couch

  use Commanded.EventStore.CouchTestCase
  use Commanded.EventStore.SubscriptionTestCase, event_store: Couch

  defp event_store_wait(default \\ nil), do: default
end
