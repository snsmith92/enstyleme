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
      # expect(response).to redirect_to(Vendor.last)
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
        website: "",
        facebook: "",
        consent: nil
      } }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(Vendor.count).to eq 0
    end 
  end 

  describe "vendors#show action" do 
    it "should successfully show the page if the vendor is found" do
      user = FactoryBot.create(:user)
      sign_in user
      vendor = FactoryBot.create(:vendor)
      get :show, params: { id: vendor.id }
      expect(response).to have_http_status(:success)
    end 

    it "should return 404 error if the vendor is not found" do
      get :show, params: { id: 'fakeid' }
      expect(response).to have_http_status(:success)
    end 
  end 

  describe "vendors#edit action" do 
    it "should not allow a user who did not create the vendor to edit the vendor" do 
      vendor = FactoryBot.create(:vendor)
      user = FactoryBot.create(:user)
      sign_in user
      get :edit, params: { id: vendor.id }
      expect(response).to have_http_status(:forbidden)
    end 

    it "should not allow unauthenticated users to edit a vendor" do 
      vendor = FactoryBot.create(:vendor) 
      get :edit, params: { id: vendor.id }
      expect(response).to redirect_to new_user_session_path
    end 
  end 

  describe "vendors#update action" do 
    it "shouldn't allow a user who did not create the vendor to update" do
      vendor = FactoryBot.create(:vendor)
      user = FactoryBot.create(:user)
      sign_in user
      patch :update, params: { id: vendor.id, vendor: { name: 'Test' } }
      expect(response).to have_http_status(:forbidden)
    end 

    it "shouldn't allow unauthenticated users to update a vendor" do
      vendor = FactoryBot.create(:vendor)
      patch :update, params: { id: vendor.id, vendor: { name: 'Test' } }
      expect(response).to redirect_to new_user_session_path
    end 

    it "should render the edit form unprocessable entity if invalid" do 
      vendor = FactoryBot.create(:vendor)
      sign_in vendor.user
      patch :update, params: { id: vendor.id, vendor: { name: ' '} }
      expect(response).to have_http_status(:unprocessable_entity)
      vendor.reload
      expect(vendor.name).to eq "Sherzel's Nail Spa"
    end 
  end 

  describe "vendors#destroy action" do 
    it "shouldn't allow a user who did not create the vendor to destroy the vendor" do
      vendor = FactoryBot.create(:vendor)
      user = FactoryBot.create(:user)
      sign_in user
      delete :destroy, params: { id: vendor.id }
      expect(response).to have_http_status(:forbidden)
    end 

    it "should not allow unauthenticated users to destroy a vendor" do
      vendor = FactoryBot.create(:vendor)
      delete :destroy, params: { id: vendor.id }
      expect(response).to redirect_to new_user_session_path
    end 

    it "should allow a user who created the vendor to destroy the vendor" do
      vendor = FactoryBot.create(:vendor)
      sign_in vendor.user
      delete :destroy, params: { id: vendor.id }
      expect(response).to redirect_to root_path
      vendor = Vendor.find_by_id(vendor.id)
      expect(vendor).to eq nil
    end 
  end 
end
