# Starts the ExUnit test framework and sets the Ecto Repo to manual sandbox mode.
#
# This is typically used in test setup to ensure each test runs in a clean database
# state, without affecting other tests.
ExUnit.start()
# Ecto.Adapters.SQL.Sandbox.mode(DcaPhx.Repo, :manual)
