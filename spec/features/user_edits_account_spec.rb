feature 'user edits account' do
  before :each do
    @user = FactoryGirl.create(:user)
  end

  scenario "an existing user changes email and password" do
    sign_in(@user)
    click_link 'Edit Account'

    attach_file 'Avatar', "#{Rails.root}/spec/support/images/test_avatar.png"
    fill_in 'Email', with: 'new_email@example.com'
    fill_in 'Password', with: 'newpassword'
    fill_in 'Password Confirmation', with: 'newpassword'
    fill_in 'Current Password', with: @user.password
    click_button 'Update'

    expect(page).to have_content("Your account has been updated successfully.")
    expect(page).to have_content('Sign Out')
    expect(page).to have_css("img[src*='test_avatar.png']")
  end

  scenario "user uploads non-image file" do
    sign_in(@user)
    click_link 'Edit Account'

    attach_file 'Avatar', "#{Rails.root}/spec/support/images/text.txt"
    fill_in 'Current Password', with: @user.password
    click_button "Update"

    expect(page).to have_content("allowed types: jpg, jpeg, gif, png, bmp")
  end

  scenario 'user does not provide required information' do
    sign_in(@user)
    click_link 'Edit Account'

    click_button 'Update'
    expect(page).to have_content("can't be blank")
  end

  scenario "new password and confirmation do not match" do
    sign_in(@user)
    click_link 'Edit Account'

    fill_in 'Email', with: 'new_email@example.com'
    fill_in 'Password', with: 'newpassword'
    fill_in 'Password Confirmation', with: 'new1password'
    fill_in 'Current Password', with: @user.password

    click_button 'Update'
    expect(page).to have_content("doesn't match")
  end

  scenario "user supplies wrong current password" do
    sign_in(@user)
    click_link 'Edit Account'

    fill_in 'Email', with: 'new_email@example.com'
    fill_in 'Password', with: 'newpassword'
    fill_in 'Password Confirmation', with: 'newpassword'
    fill_in 'Current Password', with: 'newwwwwwpasswordddd'

    click_button 'Update'
    expect(page).to have_content("Current password is invalid")
    expect(page).to have_content("Sign Out")
  end

  scenario "user cannot access page without signing in" do
    visit edit_user_registration_path

    expect(page).to have_content('Sign In')
    expect(page).to_not have_content('Edit Account')
  end
end
