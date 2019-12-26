class AddWorktypeToEmployee < ActiveRecord::Migration[6.0]
  def change
    #execute  <<-SQL
    #  CREATE TYPE worktype AS ENUM ('Tam Zamanlı','Yarı Zamanlı','Dönemsel','Proje Bazlı','Stajer','Serbest Zamanlı','Saatlik');
    #SQL
    add_column :employees, :worktype, :work_type
    add_column :advertisements, :worktype, :worktype
  end
end
