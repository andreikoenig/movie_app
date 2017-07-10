class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, :last_name, :birthday, :email, presence: true
  validate :birthday_cannot_be_in_the_future

  def birthday_cannot_be_in_the_future
    if birthday
      errors.add(:birthday, 'can\'t be in the future') if birthday > Date.today
    end
  end
end
