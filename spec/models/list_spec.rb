require 'rails_helper'

RSpec.describe List, type: :model do
  let(:user){create(:user)}
  let(:list){create(:list, user_id: user.id)}

  describe "attributes" do
    it "has title, private and user_id attributes" do
      expect(list).to have_attributes(title: list.title, private: list.private, user_id: list.user_id)
    end
  end
end
