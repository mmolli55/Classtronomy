class Student < ActiveRecord::Base
  # before_create :create_remember_token
  # before_save :normalize_fields

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
end
