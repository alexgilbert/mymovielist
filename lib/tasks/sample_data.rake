namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
    make_relationships
    make_movies
    make_owns
    make_lists
    make_items
    make_shares
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
  mb = MovieBuilder.new
  999.times do |n|
    imdb_id = Faker::Number.number(2)
    mb.set_imdb_id(imdb_id).create
  end 
end

def make_lists
  users = User.all
  
  users.each { |user| List.create(name: Faker::Lorem.word, user_id: user.id) }
  
  users.sample(Faker::Number.number(2).to_i).each do |u|
    List.create(name: Faker::Lorem.word, user_id: u.id)
  end

  users.sample(Faker::Number.number(2).to_i).each do |u|
    List.create(name: Faker::Lorem.word, user_id: u.id)
  end
end

def make_items
  movies = Movie.all

  List.all.each do |l|
    movies.sample(Faker::Number.digit.to_i).each do |m|
      Item.create(list_id: l.id, movie_id: m.id)
    end
  end
end

def make_shares
  users = User.all

  List.all.each do |l|
    Share.create(list_id: l.id, user_id: l.user_id, writable: true)
    users.sample(Faker::Number.digit.to_i).each do |u|
      writable = [true, false, false, false, false].sample
      if l.user_id != u.id
        Share.create(list_id: l.id, user_id: u.id, writable: writable)
      end 
    end
  end
end

def make_owns
  movies = Movie.all

  User.all.each do |u|
    movies.sample(Faker::Number.number(2).to_i).each do |m|
      Own.create(user_id: u.id, movie_id: m.id)
    end
  end
end
