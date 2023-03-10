class ApplicationController < ActionController::Base

  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to '/users/sign_in', :notice => 'if you want to add a notice'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end

end
