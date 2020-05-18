class ChangeColumnTypeInPatients < ActiveRecord::Migration[5.0]
  def change
    change_column :patients, :age, :integer
  end
end
