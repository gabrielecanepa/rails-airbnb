class AddPublicationDateToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :publication_date, :string
  end
end
