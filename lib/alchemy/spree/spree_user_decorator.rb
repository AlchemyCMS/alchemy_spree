Spree::User.class_eval do

  def alchemy_roles
    if has_spree_role?(:admin)
      %w(admin)
    elsif has_spree_role?(:user)
      %w(member)
    else
      %w()
    end
  end
end
