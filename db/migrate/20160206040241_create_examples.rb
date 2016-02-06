class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :name
      t.string :favorite_color

      t.timestamps null: false
    end
  end
end
