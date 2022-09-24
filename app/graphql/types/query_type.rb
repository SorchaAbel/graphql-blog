module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [Types::UserType], null: false
    field :posts, [Types::PostType], null: false
    field :comments, [Types::CommentType], null: false
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end
    field :comment, Types::CommentType, null: false do
      argument :id, ID, required: true
    end

    field :post, Types::PostType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find_by(id: id)
    end
    def post(id:)
      Post.find_by(id: id)
    end
    def comment(id:)
      Comment.find_by(id: id)
    end

    def users
      User.all
    end
    def posts
      Post.all
    end
    def comments
      Comment.all
    end
  end
end
