module Types
  class CommentInputType < GraphQL::Schema::InputObject
    graphql_name "CommentInputType"
    description "All the attributes needed to create or update a comment"

    argument :id, ID, required: false
    argument :post_id, ID, required: false
    argument :body, String, required: false
  end
end