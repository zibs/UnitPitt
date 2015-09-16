class Contributor < ActiveRecord::Base
  extend FriendlyId
  has_many :books, dependent: :destroy
  
  friendly_id :name, use: :slugged

end
