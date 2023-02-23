require 'rails_helper'

RSpec.describe User, type: :model do
  subject { 
    Doctor.new(
      name: 'Tom',
      speciality:'General',
      description:'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      graduation:'20/01/1998',
      image: '#',
    )
  }

  before { subject.save }
  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end