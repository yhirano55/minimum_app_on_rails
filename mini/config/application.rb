require "bundler/setup"

require "rails/all"
Bundler.require(*Rails.groups)

module Mini
  class Application < Rails::Application
    config.load_defaults 5.1
    config.api_only      = true
    config.cache_classes = false
    config.eager_load    = false
    config.consider_all_requests_local = true
  end
end

Rails.application.initialize!

class User < ActiveRecord::Base
  enum gender: { female: 0, male: 1 }
  validates :name, :gender, presence: true
end

class UsersController < ActionController::API
  wrap_parameters format: %i[json]
  before_action :set_user, only: %i[show update destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :gender)
    end
end

Rails.application.routes.draw do
  resources :users
end
