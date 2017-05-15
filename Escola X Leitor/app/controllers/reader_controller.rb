class ReaderController < ApplicationController
	def index
		bar_code = params[:bar_code]

		if bar_code != nil && bar_code != ""
			@alumn = Alumn.find_by bar_code: bar_code

		else
			# nothing to do in here
		end

	end


	private
	def get_alumn_on_database

	end
end
