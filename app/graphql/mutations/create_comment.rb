module Mutations
  class CreateComment < GraphQL::Schema::Mutation
    null true

    argument :comment, Types::CommentInputType, required: true

    def resolve(comment:)
      existing_post = Post.find_by(id: comment[:post_id])
      result = Comment.create(post: existing_post, body: comment[:body])
      result
    end
  end
end