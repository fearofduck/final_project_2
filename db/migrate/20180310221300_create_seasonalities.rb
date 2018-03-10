class CreateSeasonalities < ActiveRecord::Migration
  def change
    create_table :seasonalities do |t|
      t.string :scenario
      t.integer :ds40_seas_id
      t.integer :ds53_seas_id
      t.integer :conv_seas_id
      t.integer :user_id

      t.timestamps

    end
  end
end
