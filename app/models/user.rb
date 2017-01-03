class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_one :address

         validates :first_name, presence:true, length:{maximum:20}
         validates :last_name, presence:true, length:{maximum:20}
end
