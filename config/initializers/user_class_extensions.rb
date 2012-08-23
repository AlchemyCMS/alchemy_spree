Spree::Core::Engine.config.to_prepare do
  if Spree.user_class
    Spree.user_class.class_eval do
      def has_spree_role?(role_in_question)
        spree_roles.any?{ |r| r.name == role_in_question.to_s.camelize || r.name == role_in_question.to_s }
      end

    end
  end
end