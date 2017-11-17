class WelcomeController < ApplicationController
  def index
      @lcdbv = Lchdbver.order(:SONO).all
  end
end
