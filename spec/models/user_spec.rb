require 'rails_helper'

describe User, type: :model do
  let(:user) { User.new(name: 'Homer', email: 'homer@simpson.com', password: 'asdasd')}

  describe User do
    it 'is valid with a name, email and password' do
      expect(user).to be_valid
    end
  end
end
