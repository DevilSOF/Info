class WelcomeController < ApplicationController
  def index
      @lcdbv = Lchdbver.order(:SONO).all
      @fcdbv = Fchdbver.order(:SONO).all
  end
end
