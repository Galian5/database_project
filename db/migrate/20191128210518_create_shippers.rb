class CreateShippers < ActiveRecord::Migration[5.1]
  def change
    create_table :shippers do |t|
      t.string :company_name
      t.string :phone

      t.timestamps
    end
  end
end
