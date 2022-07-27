require 'rails_helper'

RSpec.describe TagsController, type: :controller do
  describe "GET /index" do
    
    let(:user) { User.create!(email: 'test@example.com', password: '1234567890') } 
    

    it "returns a successful response" do
      # before { login_as user, scope: :user }
      get :index
      expect(response).to be_successful
    end

    it "renders the index template" do
      #  before { login_as user, scope: :user }
       get :index
       expect(response).to render_template("index")
    end
  end
end

