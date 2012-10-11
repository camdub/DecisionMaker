class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|

      t.string :name
      t.string :position
      t.string :hashtag
      t.string :twitter_handle

      t.timestamps
    end
  end
end
