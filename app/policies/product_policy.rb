class ProductPolicy < ApplicationPolicy
# This policy seems not to be working, im using configs on application_policy.rb
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    # everyone can access show endpoint of a product
    return true
  end

  def update?
    # everyone can access edit endpoint of a product
    return true
  end

  def create?
    # anyone logged can create a product
    return !user.nil?
  end

end
