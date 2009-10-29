# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Clearance::Authentication
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
    rescue_from 'Acl9::AccessDenied', :with => :access_denied
   
private
  def access_denied
       if current_user
          render :template => 'home/access_denied'
      else
          flash[:notice] = 'Access denied. Try to log in first.'
          redirect_to new_session_path
      end    
    end
    
end  