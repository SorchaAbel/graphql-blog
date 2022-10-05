module Types
  class PostInputType < GraphQL::Schema::InputObject
    graphql_name "PostInputType"
    description "All the attributes needed to create or update a post"

    argument :id, ID, required: false
    argument :user_id, ID, required: false
    argument :body, String, required: false
  end
end