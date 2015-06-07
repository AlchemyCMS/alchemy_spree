module Alchemy
  module Spree
    class Ability
      include CanCan::Ability
      include Permissions::GuestUser

      def initialize(user)
        if user && user.alchemy_roles.include?('admin')
          can :index, :alchemy_admin_spree
        else
          alchemy_guest_user_rules
        end
      end
    end
  end
end
