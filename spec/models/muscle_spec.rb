describe Muscle do
  it { should belong_to :muscle_group }

  it { should have_valid(:name).when('Hamstrings', 'Deltoids') }
  it { should_not have_valid(:name).when(nil, '') }

  subject { FactoryGirl.create(:muscle) }
  it { should validate_uniqueness_of(:name) }
end
