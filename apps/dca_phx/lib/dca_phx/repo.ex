defmodule DcaPhx.Repo do
  @moduledoc """
  A module that keeps using definitions for `Ecto.Repo` and friends
  """

  use Ecto.Repo,
    otp_app: :dca_phx,
    adapter: Ecto.Adapters.Postgres
end
