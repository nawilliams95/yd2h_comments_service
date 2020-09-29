class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Comments Service API" }
      end
end
