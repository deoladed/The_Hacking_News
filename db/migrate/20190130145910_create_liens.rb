class CreateLiens < ActiveRecord::Migration[5.2]
  def change
    create_table :liens do |t|
      t.belongs_to :user, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
