class AddPublishedAtDateToJournals < ActiveRecord::Migration[7.1]
  def change
    add_column :journals, :published_at_date, :date
  end
end
