class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, inclusion: 40..200
  before_create :set_password

  private

  def set_password
    self.password = 8.times.map { [*'0'..'9', *'a'..'z', *'A'..'Z'].sample }.join
  end
end
