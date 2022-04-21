class AddDatetimeToNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :updated_at, :datetime
  end
end
