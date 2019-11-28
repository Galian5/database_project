class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.string :title
      t.string :title_of_courtesy
      t.date :birthdate
      t.date :hiredate
      t.string :address
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country
      t.string :homephone
      t.string :extension
      t.text :notes
      t.string :reports_to
      t.string :photo_path

      t.timestamps
    end
  end
end
