require 'rails_helper'

RSpec.describe User do
  let(:user) { create(:user) }

  subject { user }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_uniqueness_of(:email) }
  it { expect(user).to allow_value('diasks2@gmail.com').for(:email) }
  it { expect(user).to_not allow_value('blah').for(:email) }
  it { expect(user).to validate_confirmation_of(:password) }

  it { should have_many(:shifts) }
  it { should have_many(:blackouts) }
end