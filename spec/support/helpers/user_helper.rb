module UserHelper
  def spawn_users
    {
      user:  create(:user, email: "catwoman@example.com"),
      admin: create(:user, :admin, email: "joker@example.com")
    }
  end
end
