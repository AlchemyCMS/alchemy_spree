Alchemy.user_class.class_eval do

  def spree_roles
    if alchemy_roles.include?('admin')
      ::Spree::Role.where(name: 'admin')
    else
      ::Spree::Role.where('1 = 0') # aka. empty relation
    end
  end

end
