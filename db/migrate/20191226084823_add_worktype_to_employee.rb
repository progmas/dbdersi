class AddWorktypeToEmployee < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :worktype, :work_type
    add_column :advertisements, :worktype, :worktype
  end
end
