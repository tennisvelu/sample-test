class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :status,default: true
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
