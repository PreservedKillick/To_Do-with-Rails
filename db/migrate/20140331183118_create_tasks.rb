class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :description, :string
      t.column :due_date, :date
    end
  end
end
