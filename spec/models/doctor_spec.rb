require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject do
    Doctor.new(
      name: 'Tom',
      speciality: 'General',
      description: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      graduation: '20/01/1998',
      image: '#'
    )
  end

  before { subject.save }
  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'speciality should be present' do
    subject.speciality = nil
    expect(subject).to_not be_valid
  end
  it 'description should be present' do
    subject.description = nil
    expect(subject).to_not be_valid
  end
  it 'description should be a minimum of 50 characters' do
    subject.description = 'not enough characters'
    expect(subject).to_not be_valid
  end
  it 'description should be a maximum of 300 characters' do
    subject.description = '"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    '
    expect(subject).to_not be_valid
  end
end
