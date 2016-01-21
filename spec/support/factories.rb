FactoryGirl.define do
  factory :muscle_group do
    sequence(:name) { |n| "Muscle Group #{n}" }
    sequence(:description) { |n| "Muscle Group #{n} description." }
    image_url 'http://www.randomurl.com/image.gif'
    source 'internet.net'
  end

  factory :muscle do
    sequence(:name) { |n| "Muscle #{n}" }
    sequence(:description) { |n| "Muscle #{n} description." }
    image_url 'http://www.randomurl.com/image.gif'
    source 'internet.net'
    muscle_group
  end
end
