class CreateDonars < ActiveRecord::Migration
  def change
    create_table :donars do |t|
      t.string :title
      t.string :name
      t.string :address_line_1
      t.string :pin_code
      t.references :city
      t.string :mobile
      t.string :landline
      t.string :pan_number

      t.timestamps
    end
    add_index :donars, :city_id
  end
end
