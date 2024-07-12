defmodule DcaPhx.Repo do
  use Ecto.Repo,
    otp_app: :dca_phx,
    adapter: Ecto.Adapters.Postgres
end
