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

  # for using salt
  # https://stackoverflow.com/questions/19173175/rails-how-to-write-your-own-authentication-without-using-has-secure-password
  # https://stackoverflow.com/questions/25438030/cannot-get-bcrypt-autentication-to-work

  before_save :encrypt_password

  def authenticate(password_digest)
    Password.new(password_digest) == password_digest
  end

  protected

  def encrypt_password
    self.password_digest = Password.create(@password_digest)
    self.created_at = Date.today
    self.updated_at = Time.now
  end

end
