class Session
  include Mongoid::Document
  field :user_id, type: String
  field :key, type: String
  field :created_at, type: String
  field :updated_at, type: String
end
