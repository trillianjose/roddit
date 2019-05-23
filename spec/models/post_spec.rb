require 'rails_helper'

describe Post, type: :model do
  let(:user) { User.create(name: 'Homer', email: 'homer@simpson.com', password: 'asdasd')}
  let(:p1) { Post.new(title: 'Tragic Comedy', body: 'asifnaufauf afuasf', user_id: user.id)}

  describe Post do
    it 'is valid with title, body and user id' do
      expect(p1).to be_valid
    end
  end
end
