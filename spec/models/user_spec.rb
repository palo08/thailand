require 'rails_helper'
describe User do
  describe '#create' do

    it "is valid with a email, password, password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is invalid without a name" do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end

    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    it "is invalid with a name that has more than 9 characters" do
      user = build(:user, name: "asdasdasd")
      user.valid?
      expect(user.errors[:name]).to include("is too long (maximum is 8 characters)")
    end

    it "is valid with a name that has less than 8 characters" do
      user = build(:user, name: "asdasdas")
      expect(user).to be_valid
    end

    it "is invalid with a duplicate email" do
      user = create(:user)
      another_user = build(:user)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    it "is valid with a password that has more than 8 characters" do
      user = build(:user, password: "awawawaw", password_confirmation: "awawawaw")
      expect(user).to be_valid
    end

    it "is invalid with a password that has less than 7 characters" do
      user = build(:user, password: "awawawa", password_confirmation: "awawawa")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 8 characters)")
    end
  end
end