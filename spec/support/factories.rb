FactoryGirl.define do
  factory :muscle_group do
    sequence(:name) { |n| "Muscle Group #{n}" }
    sequence(:description) { |n| "Muscle Group #{n} description." }
    sequence(:parent) { |n| "Muscle Group #{n} parent" }
    image_url 'http://www.exrx.net/Images/Muscles/DeltoidLateralBack.gif'
    source 'www.exrx.net'
  end
end
