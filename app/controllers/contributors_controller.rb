class ContributorsController < ApplicationController

	def index
		@contributors   = Contributor.order("created_at ASC")
		# @search_results = Book.text_search(params[:query]).order("created_at DESC")
	end

	def show
		@contributors    = Contributor.order("created_at DESC")
		@contributor     = Contributor.friendly.find(params[:id])
		@bio             = Contributor.friendly.find(params[:id]).bio
		@book_collection = @contributor.books.all
	end

	def authors
		# returns array of authors
		# @authors = Book.pluck(:author)
		@authors = Book.pluck(:author).sort_by!{ |m| m.split(" ").reverse.join.upcase }
		@authors = @authors.zip.in_groups_of(10).transpose
		# @authors = [@authors].transpose.map(&:reverse)
	end

	def titles
		# returns array of authors
		@titles = Book.pluck(:title).sort_by!{ |t| t.downcase }
		@titles = @titles.zip.in_groups_of(10).transpose
	end
end
