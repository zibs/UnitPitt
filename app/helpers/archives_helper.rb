module ArchivesHelper

	
	def image_array 
		@image_array = []
		counter = 1 
		7.times do |image|
			image = "front_page_#{counter}.png"
			@image_array << image
			counter += 1
		end
	end

# 
	def generate_front_page_image(det_number)
		@front_page_image  = "front_page_#{det_number}.png"		
	end

	def match_link_path(det_number)
					@archive_path = case det_number
					when 1  then "IngridKoenigs-RapOnTheSublime"
					when 2  then  "AsIfCompositionWereaDogandNotaGod"
					when 3  then "Elaine-Brewer-White-Seven-Sins-and-the-Television-Set"
					when 4  then "AndAfterwardsJesusHimselfSentOutThroughThemFromEastToWestTheSacredAndImperishableProclamationOfEternalSalvation"
					when 5  then "LookUponMyWorksYeMightyAndDespair"	
					when 6  then "For Immediate Release"
					when 7  then "OutlawArtistsAtThePitt"

					else "root_path"
				end
	end
	def match_alt_tag(det_number)
		@alt_tag = case det_number
					when 1  then "Absolutely sublime my dear"
					when 2 then  "As if, my friend, as if."
					when 3  then "The Seven Sins inside the Televsion"
					when 4  then "And Afterwards Jesus Himself Sent Out Through Them From East To West The Sacred And Imperishable Proclamation Of Eternal Salvation!"
					when 5  then "Look Upon My Works Ye Mighty And Despair"	
					when 6  then "For Immmmmmmmmmmmmediate Release"
					when 7  then "Bound to be a hit!"
					else "No alt tag available, sorry :("
				end
			end

	


end
