require 'faker'

puts "Cleaning database..."
Message.destroy_all
Feature.destroy_all
Project.destroy_all
User.destroy_all

puts "Creating users..."
users = []
5.times do
  users << User.create!(
    email: Faker::Internet.unique.email,
    password: "password123",
    password_confirmation: "password123"
  )
end

puts "Creating projects..."
projects = []
users.each do |user|
  rand(2..4).times do
    projects << Project.create!(
      name: Faker::App.name,
      description: Faker::Lorem.paragraph(sentence_count: 4),
      user: user
    )
  end
end

puts "Creating features..."
features = []
projects.each do |project|
  rand(3..6).times do
    features << Feature.create!(
      name: "#{Faker::Hacker.verb.capitalize} #{Faker::Hacker.noun}",
      date_finished: Faker::Date.between(from: 1.year.ago, to: Date.today),
      summary: Faker::Lorem.paragraph(sentence_count: 3),
      project: project
    )
  end
end

puts "Creating messages..."
features.each do |feature|
  rand(2..5).times do
    Message.create!(
      role: ["user", "system", "assistant"].sample,
      content: Faker::Lorem.sentence(word_count: 10),
      feature: feature
    )
  end
end

puts "✅ Done! Created:"
puts "  #{User.count} users"
puts "  #{Project.count} projects"
puts "  #{Feature.count} features"
puts "  #{Message.count} messages"
