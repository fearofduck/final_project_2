class CreateConvSeas < ActiveRecord::Migration
  def change
    create_table :conv_seas do |t|
      t.float :jan
      t.float :feb
      t.float :mar
      t.float :apr
      t.float :may
      t.float :jun
      t.float :jul
      t.float :aug
      t.float :sep
      t.float :oct
      t.float :nov
      t.float :dec
      t.string :name
      t.integer :user_id

      t.timestamps

    end
  end
end
