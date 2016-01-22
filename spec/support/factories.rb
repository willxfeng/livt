FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    first_name 'John'
    last_name 'Smith'
    password 'password'
    password_confirmation 'password'
  end

  factory :muscle_group do
    sequence(:name) { |n| "Muscle Group #{n}" }
    sequence(:description) { |n| "Muscle Group #{n} description." }
    image 'http://www.randomurl.com/image.gif'
    source 'internet.net'
  end

  factory :muscle do
    sequence(:name) { |n| "Muscle #{n}" }
    sequence(:description) { |n| "Muscle #{n} description." }
    image 'http://www.randomurl.com/image.gif'
    source 'internet.net'
    user
    muscle_group
  end
end
