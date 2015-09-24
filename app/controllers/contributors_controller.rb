class ContributorsController < ApplicationController
	include ContributorsHelper

	def index
		@contributors        = Contributor.order("created_at DESC")
		@contributor_results = Contributor.full_search(params[:search]) unless params[:search].nil?
		@book_results        = Book.full_search(params[:search]) unless params[:search].nil?

		respond_to do |format|
		    format.html 
		   	format.js
		end
    


			
		# @search_results = Book.text_search(params[:query]).order("created_at DESC")
	end

	def show
		@contributors    = Contributor.order("created_at DESC")
		@contributor     = Contributor.friendly.find(params[:id])
		@bio             = Contributor.friendly.find(params[:id]).bio
		@book_collection = @contributor.books.all
	end

	def authors
		@authors    = Book.pluck(:author).sort_by!{ |m| m.split(" ").reverse.join.upcase }
		@author_set = (Book.pluck(:author).length / 4)
		@authors = @authors.zip.in_groups_of(@author_set).transpose
		# @authors = [@authors].transpose.map(&:reverse)
	end



	def titles
		@titles = Book.pluck(:title).sort_by!{ |t| t.downcase }
		@title_set = (Book.pluck(:title).length / 4)
		@titles = @titles.zip.in_groups_of(@title_set).transpose
	end
end
