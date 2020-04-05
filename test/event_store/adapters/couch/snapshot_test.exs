defmodule Commanded.EventStore.Adapters.Couch.SnapshotTest do
  alias Commanded.EventStore.Adapters.Couch

  use Commanded.EventStore.CouchTestCase
  use Commanded.EventStore.SnapshotTestCase, event_store: Couch
end
