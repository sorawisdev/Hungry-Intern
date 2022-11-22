# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    #
      return unless user.present?

      admin if user.admin?
      
  end

  def admin
      can :manage, :all
  end
end
