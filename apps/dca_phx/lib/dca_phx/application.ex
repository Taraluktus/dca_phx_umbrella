defmodule DcaPhx.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  @spec start(any(), any()) :: {:error, any()} | {:ok, pid()}
  def start(_type, _args) do
    children = [
      # DcaPhx.Repo,
      {DNSCluster, query: Application.get_env(:dca_phx, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: DcaPhx.PubSub}
      # Start a worker by calling: DcaPhx.Worker.start_link(arg)
      # {DcaPhx.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: DcaPhx.Supervisor)
  end
end
