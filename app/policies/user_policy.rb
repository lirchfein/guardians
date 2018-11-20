class UserPolicy < ApplicationPolicy
  def show?
    record == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
