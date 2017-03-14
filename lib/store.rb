class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
  validate :mens_or_womens_apparel

  def mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
        errors.add(:mens_apparel, "Has to be a men's or women's appare, store")
    end
  end
end
