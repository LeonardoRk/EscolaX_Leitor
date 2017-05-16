class ReaderController < ApplicationController
	def index
		bar_code = params[:bar_code]

		if bar_code != nil && bar_code != ""

			alumn_with_equal_bar_code = Alumn.find_by bar_code: bar_code
			
			if alumn_with_equal_bar_code != nil
				@title = alumn_with_equal_bar_code[:address] + " " + alumn_with_equal_bar_code[:name]
				#@title = "Value: " + bar_code
			else
				# nothing to do in here
			end

			@alumn = Alumn.find_by bar_code: bar_code

		else
			# nothing to do in here
		end

	end

end
