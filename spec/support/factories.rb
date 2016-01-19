FactoryGirl.define do
  factory :muscle do
    sequence(:name) { |n| "Muscle #{n}" }
    sequence(:description) { |n| "Muscle #{n} description." }
    sequence(:parent) { |n| "Muscle #{n} parent" }
    image_url 'http://www.exrx.net/Images/Muscles/DeltoidLateralBack.gif'
    source 'www.exrx.net'
  end
end
