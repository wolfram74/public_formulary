require 'rails_helper'

RSpec.describe Equation, type: :model do
  describe "associations" do
    it {should belong_to(:project)}
  end
end
