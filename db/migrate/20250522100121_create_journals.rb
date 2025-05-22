class CreateJournals < ActiveRecord::Migration[7.1]
  def change
    create_table :journals do |t|
      t.string :title
      t.string :edition_name
      t.string :published_on
      t.string :cover_image
      t.string :subtitle
      t.text :intro
      t.text :content

      t.timestamps
    end
  end
end
