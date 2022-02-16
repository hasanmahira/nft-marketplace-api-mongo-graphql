class Types::NftFileOutput < Types::BaseObject

    field :creator, type: String, null: true
    field :name, type: String, null: true
    field :price, type: Float, null: true
    field :description, type: String, null: true
    field :category, type: Integer, null: true
    field :on_sale, type: Boolean, null: true
    field :is_auction, type: Boolean, null: true
    field :cid, type: String, null: true
    field :created_at, type: String, null: true
    field :updated_at, type: String, null: true
  
  end