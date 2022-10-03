module Types
  class MutationType < Types::BaseObject
    field :create_user, Types::UserType, mutation: Mutations::CreateUser
    field :update_user, Types::UserType, mutation: Mutations::UpdateUser
    field :delete_user, Types::UserType, mutation: Mutations::DeleteUser
  end
end
