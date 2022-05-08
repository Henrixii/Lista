class Api::V1::UsersController < ApplicationController
    def login
        users = User.find_by!(email: params[:email])
        if users.valid_password?(params[:password])
            render json: users, status: :ok
         else
            head(:unauthorized)
        end
    rescue StandardError => e
        render json: {message: e.message}, status: :not_found
    end
end
