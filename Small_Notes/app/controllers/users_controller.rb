class UsersController < ApplicationController
    def index
        render plain "hello"
    end

    def create
        render json: params
    end
end
