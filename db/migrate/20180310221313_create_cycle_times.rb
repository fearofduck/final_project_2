class CreateCycleTimes < ActiveRecord::Migration
  def change
    create_table :cycle_times do |t|
      t.string :scenario
      t.integer :ds40_ct_id
      t.integer :conv_ct_id
      t.integer :ds53_ct_id
      t.integer :user_id

      t.timestamps

    end
  end
end
