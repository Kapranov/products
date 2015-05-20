class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :bonus_codes
      t.string :status
      t.string :service

      t.timestamps null: false
    end
  end
end
