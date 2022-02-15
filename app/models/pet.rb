class Pet < ApplicationRecord
  validates :color, presence: true
  validates :species, inclusion: { in: %w[dog cat bird hamster goldfish] }

  def found_days_ago
    return nil if found_at.nil?

    (Date.today - found_at).to_i
  end
end
