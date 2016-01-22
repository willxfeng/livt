class AddDateToPersonalRecords < ActiveRecord::Migration
  def change
    add_column :personal_records, :date, :date
  end
end
