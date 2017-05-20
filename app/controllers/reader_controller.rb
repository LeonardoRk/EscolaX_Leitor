class ReaderController < ApplicationController
	def index
		bar_code = params[:bar_code]

		time = mountCurrentTime()	
		# do method to get date	

		if bar_code != nil && bar_code != ""
			@alumn = Alumn.find_by_bar_code bar_code
			Frequency.create(:bar_code => bar_code.to_s , :date => time.to_s)	
			
		else
			# nothing to do in here
		end

	end
	
	TWO_POINTS = ":"
	DATE_SPACE = "/"
	SPACE_TRACE_SPACE = " - "

	private 
	def mountCurrentTime() 
	
 		hour = Time.current.hour.to_s
 		minute = Time.current.min .to_s
 		day = Time.current.day.to_s
 		month = Time.current.month.to_s
 		year = Time.current.year.to_s

 		correctDate = day + DATE_SPACE + month + DATE_SPACE + year + SPACE_TRACE_SPACE + 
 						+ hour + TWO_POINTS + minute
		return correctDate.to_s
	end

end
