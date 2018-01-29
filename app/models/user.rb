class User < ApplicationRecord

  def self.from_omniauth(user_info)
    where(uid: user_info[:uid]).first_or_create do |user|
      user.uid = user_info["id"]
      user.username = user_info["login"]
      user.token = token
      user.name = user_info["name"]
      user.profile_pic = user_info["avatar_url"]
      user.location = user_info["location"]
      user.email = user_info["email"]
      user.company = user_info["company"]
      user.bio = user_info["bio"]
    end
  end
end
