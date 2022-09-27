class UsersController < ApplicationController
    def  show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
    
end 
end

#GET /users/:id
 #   returns a user with an array of all items associated with that user
