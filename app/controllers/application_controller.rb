class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper
    def authorize
 unless current_user
 respond_to do |format|
 format.html { redirect_to"http://localhost:3000/", notice: 'Please sign in!.'}
 end
 end
 end
end
