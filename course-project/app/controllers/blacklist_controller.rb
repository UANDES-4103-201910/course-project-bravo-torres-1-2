class BlacklistController < ApplicationController
  def main
  	 @users = User.all
  end
  
end
