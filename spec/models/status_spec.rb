describe Status do
  it { should belong_to :user }

  it { should have_valid(:date)
    .when(DateTime.now, DateTime.parse('20160101'), '2016/01/11') }
  it { should_not have_valid(:date).when(nil, '', 'March', 'Twelve') }

  it { should have_valid(:weight).when(0, 135, 315, 495, 115.5) }
  it { should_not have_valid(:weight).when(nil, '', 'Twelve', -100) }
end
