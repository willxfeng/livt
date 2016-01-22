describe Workout do
  it { should have_many :gym_sets }

  it { should have_valid(:date)
    .when(DateTime.now, DateTime.parse('20160101'), '2016/01/11') }
  it { should_not have_valid(:date).when(nil, '', 'March', 'Twelve') }
end
