Alchemy::User.class_eval do

  def spree_roles
    if admin?
      ::Spree::Role.where(name: 'admin')
    elsif has_alchemy_role?(:member)
      ::Spree::Role.where(name: 'user')
    else
      ::Spree::Role.none
    end
  end
end
