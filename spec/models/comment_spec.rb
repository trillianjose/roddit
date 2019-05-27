require 'rails_helper'

describe Comment, type: :model do
  let(:user) { User.create(name: 'Homer', email: 'homer@simpson.com', password: 'asdasd')}
  let(:p1) { Post.create(title: 'Tragic Comedy', body: 'asifnaufauf afuasf', user_id: user.id)}
  let(:c1) { Comment.new(body: 'afabvasga', user_id: user.id, post_id: p1.id)}

  describe Comment do
    it 'is valid with body, post id and user id' do
      expect(c1).to be_valid
    end
  end
end
