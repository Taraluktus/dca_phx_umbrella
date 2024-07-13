defmodule DcaPhx.Account do
  @moduledoc """
  The domain for the account system.
  """
  use Ash.Domain

  resources do
    resource DcaPhx.Account.User
    resource DcaPhx.Account.Role
  end
end
