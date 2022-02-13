class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include BCrypt

  field :id, type: String
  field :user_name, type: String
  field :name, type: String
  field :surname, type: String
  field :email, type: String
  field :password_digest, type: String
  field :bdate, type: String
  field :created_at, type: String
  field :updated_at, type: String

  # has_secure_password

  before_save :encrypt_password

  def authenticate(password)
    Password.new(password_hash) == password
  end

  protected

  def encrypt_password
    self.password_hash = Password.create(@password)
  end

end
