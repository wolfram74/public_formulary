require 'rails_helper'

RSpec.describe Contributor, type: :model do
  describe "associations" do
    it {should belong_to(:user)}
    it {should belong_to(:project)}
  end
end
