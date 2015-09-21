class Contributor < ActiveRecord::Base
  include PgSearch
  extend FriendlyId
  has_many :books, dependent: :destroy
  friendly_id :name, use: :slugged

  pg_search_scope :search, :against => [:name, :bio],
  using: {tsearch: {dictionary: "english"}}
   


  	def self.full_search(query)
  		if query.present?
  			search(query)
  		else
  			nil 
  		end
  	end


end
