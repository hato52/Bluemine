class UsersController < ApplicationController
  before_action :is_user_logged_in
end
