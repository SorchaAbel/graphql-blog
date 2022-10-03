module Mutations
  class UpdateUser < GraphQL::Schema::Mutation
    null true

    argument :user, Types::UserInputType, required: true

    def resolve(user:)
      existing_user = User.find_by(id: user[:id])
      existing_user&.update(user.to_h)
      existing_user
    end
  end
end