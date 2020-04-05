defmodule Commanded.EventStore.Adapters.Couch.AppendEventsTest do
  alias Commanded.EventStore.Adapters.Couch

  use Commanded.EventStore.CouchTestCase
  use Commanded.EventStore.AppendEventsTestCase, event_store: Couch
end
