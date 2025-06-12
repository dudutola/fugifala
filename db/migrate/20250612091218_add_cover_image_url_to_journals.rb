class AddCoverImageUrlToJournals < ActiveRecord::Migration[7.1]
  def change
    add_column :journals, :cover_image_url, :string
  end
end
