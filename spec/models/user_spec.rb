describe User do
  it { should have_many :muscles }
  it { should have_many(:muscle_groups).through(:muscles) }

  it { should have_valid(:first_name).when("John", "Sally") }
  it { should_not have_valid(:first_name).when(nil, "") }

  it { should have_valid(:email).when('user@example.com', 'another@gmail.com') }
  it { should_not have_valid(:email).when(nil, "", "urser", "users@com") }

  it "has a matching password confirmation for the password" do
    user = User.new
    user.password = "password"
    user.password_confirmation = "anotherpassword"

    expect(user).to_not be_valid
    expect(user.errors[:password_confirmation]).to_not be_blank
  end

  let(:user) { User.new(first_name: 'Big', last_name: 'Bird') }

  context "#full_name" do
    it "returns full name" do
      expect(user.full_name).to eq('Big Bird')
    end
  end
end
