class Product < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true, allow_blank: false

  private 
    def assign_user
      self.user_id = current_user.id
    end
end
