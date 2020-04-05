defmodule Commanded.EventStore.CouchTestCase do
  use ExUnit.CaseTemplate

  alias Commanded.EventStore.Adapters.Couch
  alias Commanded.Serialization.JsonSerializer

  setup do
    {:ok, child_spec, event_store_meta} =
      Couch.child_spec(Couch, serializer: JsonSerializer)

    for child <- child_spec do
      start_supervised!(child)
    end

    [event_store_meta: event_store_meta]
  end
end
