class User < ActiveRecord::Base
  has_many :products
  validates :name, presence: true, allow_blank: false
end
