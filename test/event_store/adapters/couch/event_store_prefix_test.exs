defmodule Commanded.EventStore.Adapters.Couch.EventStorePrefixTest do
  alias Commanded.EventStore.Adapters.Couch

  use Commanded.EventStore.EventStorePrefixTestCase, event_store: Couch

  def start_event_store(config) do
    {:ok, child_spec, event_store_meta} = Couch.child_spec(Couch, config)

    for child <- child_spec do
      start_supervised!(child)
    end

    {:ok, event_store_meta}
  end
end
