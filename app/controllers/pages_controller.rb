class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @guards = Guard.all
    @top_guards = Guard.limit(3)
  end

  def authorization
  end
end
