class SessionsController < ApplicationController
  def create

    if user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
    end
    redirect_to dashboard_index_path
    #
    # token = response.body.split(/\W+/)[1]
    #
    # oauth_response = Faraday.get("https://api.github.com/user?access_token=#{token}")
    #
    # user_info = JSON.parse(oauth_response.body)
    #
    # user = User.find_or_create_by(uid: user_info["id"])
    # user.username = user_info["login"]
    # user.uid = user_info["id"]
    # user.token = token
    # user.name = user_info["name"]
    # user.profile_pic = user_info["avatar_url"]
    # user.location = user_info["location"]
    # user.email = user_info["email"]
    # user.company = user_info["company"]
    # user.bio = user_info["bio"]
    # user.save
    #
    # session[:user_id] = user.id
    # 
    # redirect_to dashboard_index_path
  end
end
