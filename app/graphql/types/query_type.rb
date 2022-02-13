module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    # include GraphQL::Types::Relay::HasNodeField
    # include GraphQL::Types::Relay::HasNodesField
    # include GraphQL::Types::Relay::NodeField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

       # User Login
       field :login, String, null: true, description: "Login a user" do
        argument :email, String, required: true
        argument :password, String, required: true
      end
  
      def login(email:, password:)
        if user = User.where( email: email).first 
          "Hello " + email
        #  user.sessions.create.key
        end
      end
  end
end
