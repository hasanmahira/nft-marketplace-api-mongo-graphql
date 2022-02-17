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
          email
        end
      end

      # getNftFiles
      field :get_nft_files, [NftFileOutput], null: true, description: "Get Nft Files" do
      end
  
      def get_nft_files()
        file = NftFile.all
      end

      # getNftFilesByCategory
      field :get_nft_files_by_category, [NftFileOutput], null: true, description: "Get Nft Files" do
        argument :category, Int, required: false
      end
  
      def get_nft_files_by_category(category:)
        if category > 0 
          file = NftFile.all.where(category: category)
        end
      end

  end
end
