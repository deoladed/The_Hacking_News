class CreateUnderComments < ActiveRecord::Migration[5.2]
  def change
    create_table :under_comments do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :comment, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
