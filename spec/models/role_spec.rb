require 'rails_helper'

describe Role do
  it { should validate_presence_of(:name) }
end
