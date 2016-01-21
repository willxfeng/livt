describe Exercise do
  it { should have_many :personal_records }
  it { should have_many(:users).through(:personal_records) }

  it { should have_valid(:name).when('Squat', 'Millitary Press') }
  it { should_not have_valid(:name).when(nil, '') }

  it do
    should have_valid(:difficulty).when('Beginner', 'Intermediate', 'Advanced')
  end
  it { have_valid(:difficulty).when(nil, '', 'Turtles') }

  it do
    should have_valid(:type)
      .when('Free Weight', 'Cable Machine', 'Calisthenics')
  end
  it { have_valid(:difficulty).when(nil, '', 'Cardio') }
end
