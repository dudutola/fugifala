class RemoveCoverImageFromJournals < ActiveRecord::Migration[7.1]
  def change
    remove_column :journals, :cover_image, :string
  end
end
