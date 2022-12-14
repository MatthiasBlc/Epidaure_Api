class User < ApplicationRecord
  belongs_to :practice
  has_many :time_slots, dependent: :destroy
  has_many :patients
  delegate :rooms, to: :practice
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist
 

  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ } 
  enum status: {
    collaborator: 0,
    holder: 1,
    administrator: 2
  }, _prefix: true
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  
end
