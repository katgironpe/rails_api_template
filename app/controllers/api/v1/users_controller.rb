module Api
  module V1
    class UsersController < ApplicationController
      respond_to :json

      def index
        respond_with User.order('created_at DESC')
      end
    end
  end
end
