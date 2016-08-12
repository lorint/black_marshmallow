class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true
  validate :email_is_at_least_six_chars_long

  def email_is_at_least_six_chars_long
    unless self.email.length >= 6
      errors.add :email, "Email must be at least 6 characters long moron"
    end
  end
end