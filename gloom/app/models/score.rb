class Score < ApplicationRecord
  after_update_commit :send_channel_update
  
  # Broadcast Challenge update
  def send_channel_update
    ScoreBroadcastJob.perform_later(self.id, self.value)
  end

  # Update a Score
  def update(x)
    self.value = x
    self.save!
  end
end
