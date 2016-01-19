describe Muscle do
  it { should have_valid(:name).when('Hamstrings', 'Deltoids') }
  it { should_not have_valid(:name).when(nil, '') }

  it { should have_valid(:description).when('Back leg muscles') }
  it { should_not have_valid(:description). when(nil, '') }

  it { should have_valid(:parent).when('Legs', 'Chest') }
  it { should_not have_valid(:parent).when(nil, '') }

  it { should have_valid(:image_url).when('http://www.amazon.com') }
  it { should_not have_valid(:image_url). when(nil, '') }

  subject { FactoryGirl.create(:muscle) }
  it { should validate_uniqueness_of(:name) }
end
