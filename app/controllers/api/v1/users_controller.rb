module Api::V1
  class UsersController < BaseController
    def index
      respond_with User.order('created_at DESC')
    end
  end
end
