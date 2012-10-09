class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.string :branch
      t.string :ifsc

      t.timestamps
    end
  end
end
