require 'rails_helper'
require 'factory_girl_rails'

# describe UsersController do
RSpec.describe UsersController, :type => :controller do

  describe 'GET #create' do
    it "creates a @user with params" do
      user = build(:user)
      user.save
      # binding.pry
      # expect(assigns(:user)).to be_a_new(User)
      expect(user).to be_valid
    end
    xit "created a user with a stringified description"
    xit "redirects to @user upon save"
    xit "redirects to users#new if user is not saved" do
      get :index
      expect(response).to redirect_to(:new)
    end
  end

  # shows user's cellar
  context "GET #show" do
    it "assigns current user to @user" do
      user = build(:user)
      binding.pry
      # get :show, id: user.id
      expect(assigns(:user)).to eq(user)
    end
    xit "assigns a user with a stringified location"
    xit "shows all current bottles of a user"
    xit "shows all former bottles of a user"
    it "renders the show template" do
      let(:user) { build(:user) }
      get :show, id: user
      expect(response).to render_template("show")
    end
  end

end
