class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.float :ds40_growth
      t.float :ds53_growth
      t.string :conv_growth
      t.integer :cycle_time_id
      t.integer :seasonality_id
      t.integer :user_id
      t.float :intl_in_53
      t.float :dc_in_conv

      t.timestamps

    end
  end
end
