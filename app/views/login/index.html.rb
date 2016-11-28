<a href="<%= user_omniauth_authorize_path(:google_oauth2) %>">Google</a>
<a href="<%= user_omniauth_authorize_path(:facebook) %>">Facebook</a>


<%= link_to 'Sign Out', destroy_user_session_path, :method => :delete %>
