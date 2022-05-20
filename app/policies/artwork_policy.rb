# frozen_string_literal: true

class ArtworkPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    return @user && @user.has_any_role?(:admin, :artist, :customer)
  end

  def create?
    return @user && @user.has_any_role?(:admin, :artist)
  end

  def new?
    create?
  end

  def update?
    return @user && @user.has_any_role?(:admin, :artist)
  end

  def edit?
    update?
  end

  def destroy?
    create?
  end

  def edit_or_destroy?
    return @user && (edit? || destroy?)
  end

  def artists?
    return @user && @user.has_any_role?(:admin, :artist, :customer)
  end

  def cart?
    return @user && @user.has_any_role?(:admin, :artist, :customer)
  end

  def artist_roles?
    return @user && @user.has_role?(:customer)
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end
end
