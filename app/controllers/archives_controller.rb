class ArchivesController < ApplicationController
include ArchivesHelper
include Rails.application.routes.url_helpers

	def index
	@artifacts = Artifact.order("created_at DESC")
	@artifact = Artifact.order("RANDOM()").first
	end

	def directory	
	end

	def acknowledgments
	end

	# BEGIN EXHBITIONS
	def musikklub 
	end
	
	def musikklubsidetwo
	end

	# BEGIN ARCHIVES
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