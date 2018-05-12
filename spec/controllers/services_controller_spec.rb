require 'rails_helper'

RSpec.describe ServicesController, type: :controller do
  describe "services#create action" do 
    it "should require users to be logged in to add a service" do 
      vendor = FactoryBot.create(:vendor)
      post :create, params: { vendor_id: vendor.id, service: FactoryBot.attributes_for(:service) }
      expect(response).to redirect_to new_user_session_path
    end 
    
    it "should only allow users who made the vendor page to add a service" do
      vendor = FactoryBot.create(:vendor)
      user = FactoryBot.create(:user)
      sign_in user
      post :create, params: { vendor_id: vendor.id, service: FactoryBot.attributes_for(:service) }
      expect(response).to have_http_status(:forbidden)
    end 

    it "should allow users to make a service on a vendor page" do
      vendor = FactoryBot.create(:vendor)
      sign_in vendor.user
      post :create, params: { vendor_id: vendor.id, service: FactoryBot.attributes_for(:service) }
      expect(response).to redirect_to vendor_path(vendor)
      expect(vendor.services.length).to eq 1
      expect(vendor.services.first.name).to eq "Basic Manicure"
    end 
  end 

end
