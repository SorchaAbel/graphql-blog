module Mutations
  class CreatePost < GraphQL::Schema::Mutation
    null true

    argument :post, Types::PostInputType, required: true

    def resolve(post:)
      existing_user = User.find_by(id: post[:user_id])
      result = Post.create(user: existing_user, body: post[:body])
      result
    end
  end
end