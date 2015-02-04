class StaticPagesController < ApplicationController
  def home
      @property  = current_user.properties
  end

  def help
  end

  def about
  end
end
