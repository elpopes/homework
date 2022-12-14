require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    User.create!(
        email: "jojo@dancer.com",
        password: "password"
    )
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  describe "#is_password?" do
    it "should verify a password is correct" do
      expect(user.is_password?("password")).to be true
    end

    it "should verify a password is not correct" do
      expect(user.is_password?("password1")).to be false
    end
  end

  describe "@reset_session_token!" do
    it "sets a new session token on the user" do
        user.valid?
        old_session_token = user.session_token
        user.reset_session_token!

        expect(user.session_token).not_to eq(old_session_token)
    end

    it "returns the new session token" do
        expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe "::find_by_credentials" do
    before { user.save! }

    it "returns user given good credentials" do
        expect(User.find_by_credentials("jojo@dancer.com", "password")).to eq(user)
    end

    it "returns nil given bad credentials" do
        expect(User.find_by_credentials("jojo@dancer.com", "password1")).to be_nil
    end
  end
end
