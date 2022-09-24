# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String
    field :last_name, String
    field :street, String
    field :number, String
    field :postcode, String
    field :country, String
    field :posts, [Types::PostType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :full_name, String, null: true
    field :full_address, String, null: true

    def full_address
      "#{object.number} #{object.street} #{object.postcode} #{object.country}"
    end
    def full_name
      "#{object.first_name} #{object.last_name}"
    end
  end
end
