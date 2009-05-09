module MemberHelper
  def logged_in?
    if User.find_by_id(session[:user_id])
      true
    else
      false
    end
  end
end
