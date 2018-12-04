class ProductPolicy < ApplicationPolicy
# This policy seems not to be working, im using configs on application_policy.rb
  class Scope < Scope
    def resolve
      scope.all
    end

    def show?
      # everyone can access show endpoint of a product
      return false
    end

    def update?
      # everyone can access edit endpoint of a product
      return true
    end

  end
end
