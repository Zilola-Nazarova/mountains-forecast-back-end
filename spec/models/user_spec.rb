require 'rails_helper'

RSpec.describe User, type: :model do
  context 'new user' do

    it 'is valid with existing name' do
      expect(User.create(name: 'Tom')).to be_valid
    end

    it 'is not valid with blank name' do
      expect(User.create(name: nil)).to_not be_valid
    end

    it 'is not valid with name of more than 36 chars' do
      expect(User.create(name: 'A' * 37)).to_not be_valid
    end
  end

  context 'role attribute' do

    it "is assigned to 'user' by default" do
      user = User.create(name: 'Tom')
      expect(user.role).to eq('user')
    end

    it "can be overwrote to 'admin' when specified" do
      admin = User.create(name: 'Tom', role: 'admin')
      expect(admin.role).to eq('admin')
    end

    it "is not valid when it is neither 'admin' nor 'user'" do
      expect(User.create(name: 'Tom', role: 'guest')).to_not be_valid
    end
  end
end
