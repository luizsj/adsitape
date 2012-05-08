class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def facebook_logout
    session=nil
    @logging_out = true  
    #request.cookies = nil  
    
    #session.warden.user.user.key = ""
    redirect_to root_path
  end
  
  
end
