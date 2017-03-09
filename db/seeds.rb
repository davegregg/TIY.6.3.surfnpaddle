# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  fake_user = User.new({
    username: FFaker::Internet.user_name,
    email:    FFaker::Internet.email,
    avatar:   FFaker::Avatar.image
  })
  fake_user.save!

  3.times do
    fake_post = Post.new({
      user:  fake_user,
      title: FFaker::Skill.specialty,
      body:  FFaker::HealthcareIpsum.paragraph
    })
    fake_post.save!
  end
end
