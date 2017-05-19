class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates :first_name, presence:true, length:{maximum:20}
  validates :last_name, presence:true, length:{maximum:20}
  has_one :address
  has_many :orders

    def soft_delete
      update_attribute(:deleted_at, Time.current)
    end

    def reactivate_user
      update_attribute(:deleted_at, nil)
    end
    # ensure user account is active
    def active_for_authentication?
      super && !deleted_at
    end

    # provide a custom message for a deleted account
    def inactive_message
    	!deleted_at ? super : :deleted_account
    end

end
