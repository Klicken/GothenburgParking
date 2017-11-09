class PrivateparkingsController < ApplicationController
  def index
    @privateparkings = PrivateParking.all
  end
end
