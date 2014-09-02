FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com" }
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end

  factory :movie do
    sequence(:imdb_id) { |n| "Imdb_id_#{n}" }
    sequence(:title) { |n|  "Title #{n}" }
    release_date "2000-01-01"
    runtime 110
    adult false
    sequence(:overview) { |n| "Overview of Title #{n}" }
  end

  factory :own do
    user
    movie
  end
end
