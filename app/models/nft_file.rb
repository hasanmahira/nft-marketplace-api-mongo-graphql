class NftFile
  include Mongoid::Document
  include Mongoid::Timestamps

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

  before_save :encrypt_password

  def encrypt_password
    self.created_at = Date.today
    self.updated_at = Time.now
  end
end
