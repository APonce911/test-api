class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def show?
      # everyone can access show endpoint of a product
      true
    end

  end
end
