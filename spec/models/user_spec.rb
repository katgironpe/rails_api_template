require 'rails_helper'

describe User do
  let(:user) { create(:user, first_name: 'John', last_name: 'Doe') }

  it { should have_and_belong_to_many(:roles).with_foreign_key(:user_id) }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }

  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:password) }
  xit { should validate_confirmation_of(:password) }

  describe '#name' do
    it 'returns full name of the user' do
      expect(user.name).to eq('John Doe')
    end
  end
end
