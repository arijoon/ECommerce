class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :baskets
  validates :name, presence: true, allow_blank: false

  private 
    def assign_user
      self.user_id = current_user.id
    end
end
