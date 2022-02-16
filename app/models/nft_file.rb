class NftFile
  include Mongoid::Document
  field :creator, type: String
  field :name, type: String
  field :price, type: Float
  field :description, type: String
  field :category, type: Integer
  field :on_sale, type: Boolean
  field :is_auction, type: Boolean
  field :cid, type: String
  field :created_at, type: String
  field :updated_at, type: String
end
