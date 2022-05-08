class Api::V1::FavoritesController < ApplicationController
    acts_as_token_authentication_handler_for User
    before_action :require_login, :user_permission, only: %i[create delete]

    def create
        favorites = Favorite.new(favorites_params)
        favorites.save!
        render json: favorites, status: :created
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    def delete
        favorites = Favorite.find(params[:id])
        favorites.destroy!
        render json: {message: "favorito #{favorites.name} deletada com sucesso"}, status: :ok
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    private

    def favorites_params
        params.require(:favorites).permit(:user_id, :product_id)
    end
end