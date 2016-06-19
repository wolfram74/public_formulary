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
  describe 'authentication' do
    xit 'can tell when a user is authenticated' do

    end
    xit 'can tell when a user isn\'t authenticated' do

    end

  end
end
