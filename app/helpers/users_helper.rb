module UsersHelper
  
  def show_user(user)
    if user.email.blank?
      "unknown"
    else
      user.email    
  end
end
