class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.float :amount
      t.boolean :type
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
