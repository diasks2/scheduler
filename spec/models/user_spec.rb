require 'rails_helper'

RSpec.describe User do
  let(:user) { create(:user) }

  subject { user }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_uniqueness_of(:email) }
end