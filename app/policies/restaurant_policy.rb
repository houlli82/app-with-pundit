class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
      #scope.where(user: user)
    end
  end

  # def new?
  #   true
  # end

  def create?
    true
  end

  def show?
    true
  end

  # def edit?
  #   user = record.user
  #     true
  #   else
  #     false
  #   end
  # end

  def update?
    user = record.user
    # if user...
    #   true
    # else
    #   false
    #end
  end

  def destroy?
    user = record.user
  end
end
