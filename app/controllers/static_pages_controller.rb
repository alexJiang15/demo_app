class StaticPagesController < ApplicationController
  def home
    @latest_micropost = Micropost.order(:created_at).last
    @users = User.order(:name)
  end
end
