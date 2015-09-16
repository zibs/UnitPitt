class ArchivesController < ApplicationController
include ArchivesHelper
include Rails.application.routes.url_helpers

	def index
	end

	def directory	

	@artifacts = Artifact.order("created_at DESC")
	@artifact = Artifact.last

	@determined_number = rand(1..7)
	generate_front_page_image(@determined_number)
	@archive_path = match_link_path(@determined_number)
	image_array
	end

	# BEGIN PAGES
	def outlaws
	end
	
	def sevensins
	end

	def pictographs
	end

	def boringart	
	end

	def sublimerap
	end

	def crucifixation
	end

	def godslogo
	end

	def secretartshow
	end
	



	

end
