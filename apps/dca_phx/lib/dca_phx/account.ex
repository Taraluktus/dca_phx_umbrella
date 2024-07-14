defmodule DcaPhx.Account do
  @moduledoc """
  The domain for the account system.
  """
  use Ash.Domain
  # use Ash.Domain, extensions: [AshGraphql.Domain, AshAdmin.Domain]

  # graphql do
  #   # Defaults to `true`, use this to disable authorization for the entire domain (you probably only want this while prototyping)
  #   authorize? false
  # end

  # admin do
  #   show?(true)
  # end

  resources do
    resource DcaPhx.Account.User do
      define :get_user, args: [:id], action: :read
      define :create_user, args: [:username, :email], action: :create
      define :update_user, args: [:email], action: :update
      define :destroy_user, args: [:id], action: :destroy
      define :disable_user, args: [:id], action: :disable
      define :enable_user, args: [:id], action: :enable
    end

    resource DcaPhx.Account.Role do
      define :get_role, args: [:id], action: :read
      define :create_role, args: [:name, :description], action: :create
      define :update_role, args: [:name, :description], action: :update
      define :destroy_role, args: [:id], action: :destroy
    end
  end

  # graphql do
  #   queries do
  #     get(DcaPhx.Account.User, :get_user, :read)
  #     list(DcaPhx.Account.User, :list_users, :read)
  #   end

  #   mutations do
  #     create(DcaPhx.Account.User, :create_user, :create)
  #     update(DcaPhx.Account.User, :update_user, :update)
  #     update(DcaPhx.Account.User, :disable_user, :disable)
  #     update(DcaPhx.Account.User, :enable_user, :enable)
  #     destroy(DcaPhx.Account.User, :destroy_user, :destroy)
  #   end
  # end
end
