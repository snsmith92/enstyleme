require 'rails_helper'

RSpec.describe AvailabilitiesController, type: :controller do

  describe "availabilities#new action" do
    it "should require users to be logged in" do
      vendor = FactoryBot.create(:vendor)
      get :new, vendor_id: vendor.id
      expect(response).to redirect_to new_user_session_path
    end 

    it "should not show the page if the logged in user is not the vendor user" do
      vendor = FactoryBot.create(:vendor)
      user = FactoryBot.create(:user)
      sign_in user
      get :new, vendor_id: vendor.id
      expect(response).to have_http_status(:forbidden)
    end
    
    it "should successfully show the availability#new form" do
      vendor = FactoryBot.create(:vendor)
      sign_in vendor.user
      get :new, vendor_id: vendor.id
      expect(response).to have_http_status(:success)
    end 
  end 

  describe "availabilities#create action" do
    it "should require users to be logged in to create and availability" do
      vendor = FactoryBot.create(:vendor)
      post :create, params: { vendor_id: vendor.id, availability: FactoryBot.attributes_for(:availability)}
      expect(response).to redirect_to new_user_session_path
    end 

    it "should only allow users who own the vendor page to add an availability" do
      vendor = FactoryBot.create(:vendor)
      user = FactoryBot.create(:user)
      sign_in user
      post :create, params: { vendor_id: vendor.id, availability: FactoryBot.attributes_for(:availability)}
      expect(response).to have_http_status(:forbidden)
    end
    
    it "should  allow users to add an availability" do
    vendor = FactoryBot.create(:vendor)
    sign_in vendor.user 
    post :create, params: { vendor_id: vendor.id, availability: FactoryBot.attributes_for(:availability)}
    expect(vendor.availabilities.length).to eq 1
    end 
  end 
end
