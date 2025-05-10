class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.has_role?(:admin)
        scope.all
      else
        scope.published
      end
    end
  end

  def index?
    true
  end
end