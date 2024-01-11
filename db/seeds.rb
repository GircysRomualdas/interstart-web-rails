
if Comment.count < 200 
    200.times do |index| 
        comment = Comment.create(
            email: "rudis@gmail.com",
            message: "Nr. #{index + 1} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
        )

        number = rand(0...3) 

        number.times do |indexNumber| 
            Reply.create(
                message: "Nr. #{indexNumber + 1} Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                comment_id: comment.id
            )
        end
    end
end

user = User.where(email: "r2udis@gmail.com").first_or_initialize
user.update!(
    password: "password",
    password_confirmation: "password"
)