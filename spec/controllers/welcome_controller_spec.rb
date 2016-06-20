require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe 'meta' do
    render_views
    it 'can run tests' do
      expect(true).to eq(true)
    end
    it 'can return the home page' do
      get :index
      expect(response.status).to eq(200)
      expect(response.body).to include('welcome')
    end
  end
  describe 'when signed in' do
    render_views
    it 'can tell when a user is authenticated' do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      sign_in user
      get :secret
      expect(response.status).to eq(200)
      expect(response.body).to include('Secret')
    end
    it 'can tell when a user isn\'t authenticated' do
      sign_out :user
      get :secret
      # expect(response).to redirect_to('/users/sign_in')
      expect(response.body).to_not include('Secret')
    end

  end
  describe 'when not signed in' do
    it 'can tell when a user isn\'t authenticated' do
      get :secret
      expect(response).to redirect_to('/users/sign_in')
    end
  end
end
