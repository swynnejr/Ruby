class User < ActiveRecord::Base
  has_secure_password
  has_many :events
  has_many :attendees, dependent: :destroy
  has_many :events_attending, through: :attendees, source: :event

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :f_name, :l_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  before_save :email_lowercase

  def email_lowercase
    email.downcase!
  end
end
