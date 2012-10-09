class CreateRemarks < ActiveRecord::Migration
  def change
    create_table :remarks do |t|
      t.string :name

      t.timestamps
    end
  end
end
