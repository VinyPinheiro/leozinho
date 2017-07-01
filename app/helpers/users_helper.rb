module UsersHelper
  def total_users
    User.all.size
  end

end
