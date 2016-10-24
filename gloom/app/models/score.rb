class Score < ApplicationRecord
  # Update a Score
  def update(x)
    self.value = x
    self.save!
  end
end
