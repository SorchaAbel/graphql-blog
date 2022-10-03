module Mutations
  class DeleteUser < GraphQL::Schema::Mutation
    null false

    argument :id, ID, required: true

    def resolve(id:)
      User.where(id: id).destroy_all
      {
          id: id
      }
    end
  end
end