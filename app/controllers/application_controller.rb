class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  # Esse método é chamado após o usuário efetuar login
  def after_sign_in_path_for(user)
     # Nesse momento, verifique se há o login de primeira vez, se necessário
     root_path
   end

  private

  def require_login
     redirect_to login_url unless current_user
  end

end
