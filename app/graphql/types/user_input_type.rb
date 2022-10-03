module Types
  class UserInputType < GraphQL::Schema::InputObject
    graphql_name "UserInputType"
    description "All the attributes needed to create a user"

    argument :id, ID, required: false
    argument :first_name, String, required: false
    argument :last_name, String, required: false
    argument :street, String, required: false
    argument :number, String, required: false
    argument :postcode, String, required: false
    argument :country, String, required: false
  end
end
