class ReaderController < ApplicationController
	def index
		bar_code = params[:bar_code]
		
		if bar_code != nil && bar_code != ""
			@alumn = getAlumnOnDatabase(bar_code)
		else
			# nothing to do in here
		end

	end

	private 
	def getAlumnOnDatabase(barcode)

		alumn = Alumn.find_by bar_code: barcode	
		return alumn
	end
end
