defmodule DcaPhx.Account do
  @moduledoc """
  The domain for the account system.
  """
  use Ash.Domain

  resources do
    resource DcaPhx.Account.User do
      define :create_user, args: [:username, :email], action: :create
      define :disable_user, args: [], action: :disable
      define :enable_user, args: [], action: :enable
    end

    resource DcaPhx.Account.Role
  end
end
