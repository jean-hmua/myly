class SongTextPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end

    def index?
      record.user == user
    end
  
    def show?
      record.user == user
    end
  
    def create?
      record.user == user
    end
  
    def new?
      create?
    end
  
    def update?
      record.user == user
    end
  
    def edit?
      update?
    end
  
    def destroy?
      record.user == user
    end
  end
end
