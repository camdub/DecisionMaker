class AddHashtagToEvent < ActiveRecord::Migration
  def change
    add_column :events, :hashtag, :string
  end
end
