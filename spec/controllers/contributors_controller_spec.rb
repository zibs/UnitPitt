require 'rails_helper'

RSpec.describe ContributorsController, :type => :controller do

  describe "GET authors" do
    it "returns http success" do
      get :authors
      expect(response).to be_success
    end
  end

  describe "GET titles" do
    it "returns http success" do
      get :titles
      expect(response).to be_success
    end
  end

end
