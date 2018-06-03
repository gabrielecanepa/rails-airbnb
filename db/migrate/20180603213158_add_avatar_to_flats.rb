class AddAvatarToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :avatar, :string
  end
end
