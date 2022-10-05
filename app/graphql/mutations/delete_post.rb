module Mutations
  class DeletePost < GraphQL::Schema::Mutation
    null false

    argument :id, ID, required: true

    def resolve(id:)
      Post.where(id: id).destroy_all
      {
        id: id
      }
    end
  end
end