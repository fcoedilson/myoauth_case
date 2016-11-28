skip_before_action :require_login

def google_oauth2
   # É necessário implementar o método abaixo em seu modelo (por ex., app/models/user.rb)
   @user = Usuario.find_for_google_oauth2(request.env['omniauth.auth'], current_user)
   if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect @user, event: :authentication
   else
      session['devise.google_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
   end
end

def facebook
   @user = Usuario.find_for_facebook_oauth(request.env['omniauth.auth'],
                  current_user)
   if @user.persisted?
      set_flash_message(:notice, :success, kind: 'Facebook') if
        is_navigational_format?
      sign_in_and_redirect @user, event: :authentication # Isso irá
        se aplicar se o @user não estiver ativado
   else
      session['devise.facebook_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
   end
end
