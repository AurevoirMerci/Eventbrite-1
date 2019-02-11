require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do 
		@user = FactoryBot.create(:user)  	
  end

  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
    end
    describe "#email" do
      it { expect(@user).to validate_presence_of(:email) }
      it { is_expected.to allow_value("email@addresse.foo").for(:email) }
		end
		describe "#first_name" do
		  it { expect(@user).to validate_presence_of(:first_name) }
      it { is_expected.to allow_value("adrien").for(:first_name) }
	  end
    describe "#last_name" do
      it { expect(@user).to validate_presence_of(:last_name) }
      it { is_expected.to allow_value("armand").for(:last_name) }
    end
  end

  context "associations" do
    it { expect(@user).to have_many(:admins).with_foreign_key(:admin_id) }
    it { expect(@user).to have_many(:participants).with_foreign_key(:participant_id) }
  end

end