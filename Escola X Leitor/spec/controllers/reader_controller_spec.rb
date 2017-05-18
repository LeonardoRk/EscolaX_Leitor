require 'rails_helper'

RSpec.describe ReaderController, type: :controller do

	describe "GET new" do
    	before(:each) do
      		login_principal
    	end

    	it "assigns a new alumn as @alumn" do
      		get :new, params:{parent_id:parent.id}
      		expect(assigns(:alumn)).to be_a_new(Alumn)
    	end
  	end

end

