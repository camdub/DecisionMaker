class AddImageNameToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :image_name, :string
  end
end
