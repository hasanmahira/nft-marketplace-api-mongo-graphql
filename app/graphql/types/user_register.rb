class Types::UserRegister < Types::BaseObject

  field :name, String, null: true
  field :surname, String, null: true
  field :user_name, String, null: true
  field :email, String, null: true
  field :password_digest, String, null: true
  field :bday, String, null: true
  field :created_at, String, null: true
  field :updated_at, String, null: true

end