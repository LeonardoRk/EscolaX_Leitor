class ReaderController < ApplicationController
	def index
	  @alumns = Alumn.all
	  if params[:search]
	    @alumns = Alumn.search(params[:search]).order("created_at DESC")
	  else
	    @alumns = Alumn.all.order("created_at DESC")
	  end
	end
end
