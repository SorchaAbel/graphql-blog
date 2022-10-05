module Mutations
  class UpdatePost < GraphQL::Schema::Mutation
    null true

    argument :post, Types::PostInputType, required: true

    def resolve(post:)
      existing_post = Post.find_by(id: post[:id])
      existing_post&.update(body: post[:body])
      existing_post
    end
  end
end