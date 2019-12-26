class AddWorktypeToEmployee < ActiveRecord::Migration[6.0]
  def change
    #execute  <<-SQL
    #  CREATE TYPE work_type AS ENUM ('parttime', 'fulltime');
    #SQL
    add_column :employees, :work_type, :work_type
  end
end
