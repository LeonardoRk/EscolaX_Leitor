class ReaderController < ApplicationController
	def index
		bar_code = params[:bar_code]

		if bar_code != nil && bar_code != ""
			alumn_with_equal_bar_code = Alumn.find_by bar_code: bar_code

			if alumn_with_equal_bar_code != nil
				@title = "Value: " + bar_code
			else
				# nothing to do in here
			end

		else
			# nothing to do in here
		end

	end


	private
	def get_alumn_on_database
		
	end
end
