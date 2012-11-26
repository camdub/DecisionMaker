class AddTwittericonToUser < ActiveRecord::Migration
  def change
    add_column :users, :twittericon, :string
  end
end
