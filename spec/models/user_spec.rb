require 'rails_helper'

describe User do
  it { should have_and_belong_to_many(:roles).with_foreign_key(:user_id) }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }

  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_confirmation_of(:password) }
end
