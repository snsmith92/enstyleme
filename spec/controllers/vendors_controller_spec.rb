require 'rails_helper'

RSpec.describe VendorsController, type: :controller do
  describe "vendors#index action" do 

  end 
  
  describe "vendors#new action" do
    it "should require users to be logged in" do
      get :new
      expect(response).to redirect_to new_user_session_path
    end 

    it "should successfully show the new vendor form" do 
      user = FactoryBot.create(:user)
      sign_in user
      get :new
      expect(response).to have_http_status(:success)
    end 
  end 

  describe "vendors#create action" do 
    it "should require users to be logged in" do 
      post :create, params: { vendor: FactoryBot.attributes_for(:vendor) }
      expect(response).to redirect_to new_user_session_path
    end 

    it "should successfully create new ad in database" do
      user = FactoryBot.create(:user)
      sign_in user
      post :create, params: { vendor: FactoryBot.attributes_for(:vendor) }
      expect(response).to redirect_to(Vendor.last)
    end 

    it "should properly deal with validation errors" do 
      user = FactoryBot.create(:user)
      sign_in user
      post :create, params: { vendor: {
        name: "", 
        country: "", 
        city: "", 
        address: "", 
        zip: "",
        phone1: "", 
        phone2: "", 
        company_email: "",
        consent: nil
      } }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(Vendor.count).to eq 0
    end 
  end 

  describe "vendors#show action" do 

  end 
end
