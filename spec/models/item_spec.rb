require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:user){create(:user)}
  let(:list){create(:list, user_id: user.id)}
  let(:item){create(:item, list_id: list.id)}

  it {is_expected.to belong_to(:list)}

  describe "attributes" do
    it "has title, checked and list_id attributes" do
      expect(item).to have_attributes(title: item.title, checked: item.checked, list_id: item.list_id)
    end
  end
end
