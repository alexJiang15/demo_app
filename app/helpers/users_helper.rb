module UsersHelper
  
  def show_user(user)
    if user.email.blank?
      "unknown".html_safe
    else
      user.email
    end
  end
end
