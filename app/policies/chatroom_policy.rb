class ChatroomPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    record.user1 == user || record.user2 == user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
