@user = User.create(email: "bigboss@jojo.com", password: "123123", password_confirmation: "123123")

puts "1 User created"

99.times do |count|
  @comments = Comment.create(body: "#{count} comment", user_id: @user.id)
end

puts "99 Comments created"