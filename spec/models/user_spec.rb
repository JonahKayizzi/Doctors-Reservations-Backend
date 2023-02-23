require 'rails_helper'

RSpec.describe User, type: :model do
  subject { 
    User.new(
      user_name: 'Tom',
    )
  }

  before { subject.save }
  it 'user_name should be present' do
    subject.user_name = nil
    expect(subject).to_not be_valid
  end
end
