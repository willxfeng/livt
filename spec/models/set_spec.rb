describe GymSet do
  it { should belong_to :workout }
  it { should belong_to :exercise }

  it { should have_valid(:weight).when(0, 135, 315, 495, 115.5) }
  it { should_not have_valid(:weight).when(nil, '', 'Twelve', -100) }

  it { should have_valid(:reps).when(1, 5, 10) }
  it { should_not have_valid(:reps).when(nil, '', 'One', 0, 0.5, -2) }

  it { should have_valid(:type).when('Warmup', 'Working Set') }
  it { should_not have_valid(:type).when('Random') }
end
