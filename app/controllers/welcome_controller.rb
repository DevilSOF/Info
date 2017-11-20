class WelcomeController < ApplicationController
  def index
      @lcdbv = Lchdbver.order(:SONO).all
      @fcdbv = Fchdbver.order(:SONO).all

      version = params[:version]
      version = '2.7.150.01'
      @sdbvers = SdbverFinder.new(version).call
  end
end
