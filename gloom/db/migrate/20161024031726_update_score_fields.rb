class UpdateScoreFields < ActiveRecord::Migration[5.0]
  def change
    rename_column :scores, :team, :type
    rename_column :scores, :score, :value
  end
end
