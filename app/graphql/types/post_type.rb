# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :body, String
    field :user_id, Integer, null: false
    field :comments, [Types::CommentType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :errors, [Types::ErrorType], null: true

    def errors
      object.errors.map{|e| {field_name: e.attribute, errors: object.errors[e.attribute]}}
    end
  end
end
