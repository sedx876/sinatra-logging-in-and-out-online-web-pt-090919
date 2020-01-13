class Helpers < Sinatra::Base

  def self.current_user(session)
    if !!user = User.find_by(id: session[:user_id])
      user
    else
      nil
    end
  end

  def self.is_logged_in?(session)
    !!session[:user_id] = self.current_user(session).id
  end
end
