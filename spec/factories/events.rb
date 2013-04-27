# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    description "MyString"
    capacity 1
    place "MyString"
    start_datetime "2013-04-27 23:22:46"
    end_datetime "2013-04-27 23:22:46"
  end
end
