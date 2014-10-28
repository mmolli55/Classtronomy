class Student < ActiveRecord::Base
  before_create :create_remember_token
  before_save :normalize_fields

  validates :name,
    presence: true,
    length: {maximum: 50}

  validates :email,
    presence: true,
    uniqueness: {case_sensitive: false},
    format: {with: /[^@]+@[^@]+/ }

  validates :password,
    length: {minimum: 8 }

  has_secure_password

  def Student.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Student.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    remember_token = Student.hash(Student.new_remember_token)
  end

  def normalize_fields
    self.email.downcase!
  end
end
