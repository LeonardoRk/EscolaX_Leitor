class ReaderController < ApplicationController
	def index
		bar_code = params[:bar_code]
		
		if bar_code != nil && bar_code != ""
			@alumn = Alumn.find_by_bar_code bar_code	
		else
			# nothing to do in here
		end

	end

end
