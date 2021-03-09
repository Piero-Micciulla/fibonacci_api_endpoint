class CreateFibos < ActiveRecord::Migration[6.0]
  def change
    create_table :fibos do |t|
      t.integer :number

      t.timestamps
    end
  end
end
