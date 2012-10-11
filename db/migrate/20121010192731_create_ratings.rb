class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|

      t.references :event
      t.references :participant
      t.integer :rating_count, default: 0
      t.integer :total_rating, default: 0

      t.timestamps
    end

    add_index :ratings, [:event_id, :participant_id]
    add_index :ratings, :event_id
    add_index :ratings, :participant_id
  end
end
