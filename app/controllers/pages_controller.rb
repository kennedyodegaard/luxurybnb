class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @reservations = @user.reservations
    @flats = @user.flats
  end
end
