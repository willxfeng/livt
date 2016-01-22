describe Exercise do
  it { should have_many :personal_records }
  it { should have_many(:users).through(:personal_records) }

  it { should have_many :gym_sets }
  it { should have_many(:workouts).through(:gym_sets) }

  it { should have_many :targets }
  it { should have_many(:muscles).through(:targets) }

  it { should have_valid(:name).when('Squat', 'Millitary Press') }
  it { should_not have_valid(:name).when(nil, '') }

  it do
    should have_valid(:difficulty).when('Beginner', 'Intermediate', 'Advanced', '')
  end
  it { should_not have_valid(:difficulty).when('Turtles') }

  it do
    should have_valid(:type)
      .when('Free Weight', 'Cable Machine', 'Calisthenics')
  end
  it { should_not have_valid(:difficulty).when('Cardio') }
end
