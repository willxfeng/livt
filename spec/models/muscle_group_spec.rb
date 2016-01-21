describe MuscleGroup do
  it { should have_many :muscles }

  it { should have_valid(:name).when('Legs', 'Chest') }
  it { should_not have_valid(:name).when(nil, '') }
  
  subject { FactoryGirl.create(:muscle_group) }
  it { should validate_uniqueness_of(:name) }
end
