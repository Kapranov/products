class CreateBonusCodes < ActiveRecord::Migration
  def change
    create_table :bonus_codes do |t|
      t.belongs_to :product, index: true, foreign_key: true
      t.integer :bonus_code

      t.timestamps null: false
    end
  end
end
