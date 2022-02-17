module Types
  class MutationType < Types::BaseObject

    # User Register
    field :register, Types::UserRegister, null: true, description: "Register an user" do
      argument :email, String, required: true
      argument :password_digest, String, required: true
      argument :name, String, required: true
      argument :surname, String, required: true
      argument :user_name, String, required: true
      argument :bdate, String, required: true
      argument :created_at, String, required: true
      argument :updated_at, String, required: true
    end

    def register(email:, password_digest:, name:, surname:, user_name:, bdate:, created_at:, updated_at:)
      User.create(email: email, password_digest: password_digest, name: name, surname:surname, user_name:user_name, bdate:bdate, created_at: created_at, updated_at: updated_at)
    end

    # field :register, Types::UserRegister, null: true, Mutations::Register

    # User Update PasswordDigest
    field :update_password, Boolean, null: true, description: "Update an user" do
      argument :email, String, required: true
      argument :password_digest, String, required: true
    end

    def update_password(email:, password_digest:)
      user = User.where(email: email).first.update(password_digest:password_digest)
    end

    # NftFile create
    field :createNft, Boolean, null: true, description: "Creates a NFT" do
      argument :creator, type: String, required: true
      argument :name, type: String, required: true
      argument :price, type: Float, required: true
      argument :description, type: String, required: true
      argument :category, type: Integer, required: true
      argument :on_sale, type: Boolean, required: true
      argument :is_auction,type: Boolean, required: true
      argument :cid, type:String, required: true
      argument :created_at,type: String, required: true
      argument :updated_at,type: String, required: true
    end

    def createNft(creator:, name:, price:,description:,category:,on_sale:,is_auction:, cid:,created_at:, updated_at:)
      NftFile.create(creator:creator, name:name, price:price,description:description,category:category,on_sale:on_sale,is_auction:is_auction, cid:cid,created_at:created_at, updated_at:updated_at)
    end

  end
end
