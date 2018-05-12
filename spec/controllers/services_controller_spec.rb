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

  describe "services#edit action" do 
    it "should not allow users who did not create the vendor to edit the vendor" do
      # vendor = FactoryBot.create(:vendor)
      service = FactoryBot.create(:service)
      user = FactoryBot.create(:user)
      sign_in user
      get :edit, params: { vendor_id: service.vendor_id, id: service.id }
      expect(response).to have_http_status(:forbidden)
    end 
  end 

  describe "services#update action" do
    it "shouldn't allow a user who did not create the service to update the service" do
      service = FactoryBot.create(:service)
      user = FactoryBot.create(:user)
      sign_in user
      patch :update, params: { vendor_id: service.vendor_id, id: service.id, service: { name: "Test Edit" } }
      expect(response).to have_http_status(:forbidden)
    end 

    it "shouldn't allow unauthenticated users to update a service" do
      service = FactoryBot.create(:service)
      patch :update, params: { vendor_id: service.vendor_id, id: service.id, service: { name: "Test Edit" } }
      expect(response).to redirect_to new_user_session_path
    end 

    it "should allow the user who created the service to update the service" do
      service = FactoryBot.create(:service)
      sign_in service.user
      patch :update, params: { vendor_id: service.vendor_id, id: service.id, service: { name: "Test Edit" } }
      expect(response).to redirect_to vendor_path(service.vendor_id)
      service.reload
      expect(service.name).to eq "Test Edit"
    end 
  end 

  describe "services#destroy action" do 
    it "shouldn't allow a user who did not create the service to destroy it" do
      service = FactoryBot.create(:service)
      user = FactoryBot.create(:user)
      sign_in user
      delete :destroy, params: { id: service.id, vendor_id: service.vendor_id }
      expect(response).to have_http_status(:forbidden)
    end
    
    it "shouldn't allow unauthenticated users to delete a service" do
      service = FactoryBot.create(:service)
      delete :destroy, params: { id: service.id, vendor_id: service.vendor_id }
      expect(response).to redirect_to new_user_session_path
    end 

    it "should allow a user who created the service to destroy it" do
      service = FactoryBot.create(:service)
      sign_in service.user
      delete :destroy, params: { id: service.id, vendor_id: service.vendor_id }
      expect(response).to redirect_to vendor_path(service.vendor_id)
      service = Service.find_by_id(service.id)
      expect(service).to eq nil
    end 
  end 
end
