namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
    make_relationships
    make_movies
    make_lists
  end
end

def make_users
  admin = User.create!(name: "example User", email: "example@railstutorial.org", password: "foobar", password_confirmation: "foobar", admin: true)
    
  99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name: name, email: email, password: password, password_confirmation: password)
  end
end

def make_microposts
  users = User.order('id ASC').limit(10)
  50.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

def make_relationships
  users = User.all
  user = users.first
  followed_users = users[2..50]
  followers = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each { |follower| follower.follow!(user) }
end

def make_movies
  Movie.create!(imdb_id: "tt0137523", title: "Fight Club", release_date: "1999-10-14", runtime: 139, adult: false, overview: "A ticking-tim-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.")
end

def make_lists
  User.all.each { |user| List.create(name: Faker::Lorem.word, user_id: user.id) }
  User.first(10).each { |user| List.create(name: "Queue", user_id: user.id) }
end