module Types
  class MutationType < Types::BaseObject

    # User Register
    field :register, Types::UserRegister, null: true, description: "Register a user" do
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
  end
end
