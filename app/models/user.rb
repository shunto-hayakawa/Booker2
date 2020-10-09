class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 # 　1:Nの1
  has_many :books, dependent: :destroy
  attachment :profile_image

  validates :name, presence: true, length: { in: 2..20 }

  validates :introduction, allow_blank: true, length: { maximum:50 }
end
