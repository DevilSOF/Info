class WelcomeController < ApplicationController
  def index
      @lcdbv = Lchdbver.order(:SONO).all
      @fcdbv = Fchdbver.order(:SONO).all

      version = params[:version]
      @sdbvers = SdbverFinder.new(version).call

  end
end
