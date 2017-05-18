require 'rails_helper'

RSpec.describe ReaderController, type: :controller do

  	describe "GET index" do

  		it "text if get alumns correctlly" do
  			alumn = Alumn.create(:bar_code => "123455" , :name => "leonardo")
  			get :index , params: {:bar_code=>"123455"}
  			expect(assigns(:alumn)).to eq(alumn) 
  		end
 	end

  	


end

