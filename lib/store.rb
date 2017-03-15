class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
  validate :mens_or_womens_apparel

  before_destroy :empty_store?

  def mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
        errors.add(:mens_apparel, "Has to be a men's or women's apparel store")
    end
  end

  private

  def empty_store?
    if self.employees.size > 0
      errors.add(:name, "Cannot destroy non-empty store")
      throw :abort
    end
  end
end
