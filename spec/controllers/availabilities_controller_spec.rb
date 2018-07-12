require 'rails_helper'

RSpec.describe AvailabilitiesController, type: :controller do

  describe "availabilities#index action" do
    it "should list the availabilities in the database" do
      user = FactoryBot.create(:user)
      sign_in user
      vendor = FactoryBot.create(:vendor)
      availability_1 = FactoryBot.create(:availability)
      availability_2 = FactoryBot.create(:availability)
      get :index, vendor_id: vendor.id
      expect(response).to have_http_status :success
      response_value = ActiveSupport::JSON.decode(@response.body)
      expect(response_value.count).to eq(2)
    end 
  end 

  describe "availabilities#new action" do
    it "should require users to be logged in to create an availability" do
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

  describe "availabilities#destroy action" do
    it "shouldn't allow a user who did not create the availability to destroy it" do 
      availability = FactoryBot.create(:availability)
      user = FactoryBot.create(:user)
      sign_in user
      delete :destroy, params: { id: availability.id, vendor_id: availability.vendor_id}
      expect(response).to have_http_status(:forbidden)
    end 

    it "shouldn't allow unauthenticated users to delete a availability" do 
      availability = FactoryBot.create(:availability)
      delete :destroy, params: { id: availability.id, vendor_id: availability.vendor_id}
      expect(response).to redirect_to new_user_session_path
    end
    
    it "should allow a user who created the availability to destroy it" do
      availability = FactoryBot.create(:availability) 
      sign_in availability.user
      delete :destroy, params: { id: availability.id, vendor_id: availability.vendor_id }
      availability = Availability.find_by_id(availability.id)
      expect(availability).to eq nil
    end
  end 
end
