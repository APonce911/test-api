class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def show?
      return true
    end
    # everyone can access show endpoint of a product
  end
end
