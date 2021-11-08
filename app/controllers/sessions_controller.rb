class SessionsController < ApplicationController
  
  # In this method, we're setting values on the session hash and the cookies hash, and serializing them in the response so we can view their values in the browser.
  def index
    # ||= syntax in Ruby, it's a shorthand way to assign a value if the current value is nil or false. So if session[:session_hello] has not already been assigned a value, it will be assigned a value of "World". Otherwise, it won't get assigned a new value.
    session[:session_hello] ||= "World"
    cookies[:cookies_hello] ||= "World"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
