require 'rails_helper'

describe Role do
  it { should have_and_belong_to_many(:users).with_foreign_key(:role_id) }

  it { should validate_presence_of(:name) }
end
