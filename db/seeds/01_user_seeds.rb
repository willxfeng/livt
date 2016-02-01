unless User.find_by(email: 'default_user@test.com')
  User.create!(
    first_name: 'Default',
    last_name: 'User',
    email: 'default_user@test.com',
    password: 'default@cc3s$',
    password_confirmation: 'default@cc3s$'
  )
end
