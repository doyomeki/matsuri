# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content do
    schedule_id 1
    title "MyString"
    description "MyText"
    capacity 1
    speaker_id 1
    room_name "MyString"
  end
end
