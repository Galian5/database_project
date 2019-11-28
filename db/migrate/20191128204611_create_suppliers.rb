class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :company_name
      t.string :contact_name
      t.string :address
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country
      t.string :phone
      t.string :fax
      t.string :homepage

      t.timestamps
    end
  end
end
