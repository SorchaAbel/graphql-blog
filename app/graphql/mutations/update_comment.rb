module Mutations
  class UpdateComment < GraphQL::Schema::Mutation
    null true

    argument :comment, Types::CommentInputType, required: true

    def resolve(comment:)
      existing_comment = Comment.find_by(id: comment[:id])
      existing_comment&.update(body: comment[:body])
      existing_comment
    end
  end
end