class Book < ActiveRecord::Base
  include PgSearch
  belongs_to :contributor

    pg_search_scope :search, :against => [:author, :title, :publisher, :genre, :type],
   	using: {tsearch: {dictionary: "english"}}
   


  	def self.full_search(query)
  		if query.present?
  			search(query)
  		else
  			nil 
  		end
  	end

end
