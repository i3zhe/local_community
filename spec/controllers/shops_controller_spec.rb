require 'spec_helper'

describe ShopsController do
	describe "#index" do
		it "should have an index action" do
		  get :index
		  response.should be_success

      expect(assigns(:shops)).not_to be_nil
		end
	end

  describe "#recommends" do
    it "should have an recommends action which is root" do
      get "recommends"
      response.should be_success

      expect(assigns[:recommend_shops]).not_to be_nil
      expect(assigns[:hot_items]).not_to be_nil
    end

    it "any user can see this page" do
      user = FactoryGirl.create("user")
      sign_in :user, user

      get "recommends"
      response.should be_success
    end
  end
end
