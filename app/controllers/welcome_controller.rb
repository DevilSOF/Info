class WelcomeController < ApplicationController
  def index
      @last_check_dbvers = LastCheckDbver.order(:SONO).all
      @first_check_dbvers = FirstCheckDbver.order(:SONO).all

      version = params[:version] || @last_check_dbvers.first.Version
      @select_version_dbvers = SdbverFinder.new(version).call
  end
end
