defmodule DcaPhx.Repo do
  @moduledoc """
  A module that keeps using definitions for `Ecto.Repo` and friends
  """
  use AshPostgres.Repo, otp_app: :dca_phx

  def installed_extensions do
    # Ash installs some functions that it needs to run the
    # first time you generate migrations.
    ["ash-functions"]
  end

  # use Ecto.Repo,
  #   otp_app: :dca_phx,
  #   adapter: Ecto.Adapters.Postgres
end
