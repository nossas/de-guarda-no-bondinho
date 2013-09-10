class User < ActiveRecord::Base
  validates :name, :email, :phone, presence: true
  validates :email, format: { with: /([0-9a-zA-Z]+[-._+&amp;])*[0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}/ }
  validates :email, uniqueness: true
  validates :phone, format: { with: /\([\d]{2}\)\s[\d]{8,9}/ }
end
