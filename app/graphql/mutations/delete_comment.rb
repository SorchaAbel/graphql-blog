module Mutations
  class DeleteComment < GraphQL::Schema::Mutation
    null false

    argument :id, ID, required: true

    def resolve(id:)
      Comment.where(id: id).destroy_all
      {
        id: id
      }
    end
  end
end