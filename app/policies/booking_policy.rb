class BookingPolicy < ApplicationPolicy
  def create?
    true
  end

  def complete?
    record.user == user || record.guard = Guard.where(user_id: user.id).last
  end

  def cancel?
    record.user == user || record.guard = Guard.where(user_id: user.id).last
  end

  def confirm?
    record.guard = Guard.where(user_id: user.id).last
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
