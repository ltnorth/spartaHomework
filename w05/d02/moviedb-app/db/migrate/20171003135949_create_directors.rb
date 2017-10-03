class CreateDirectors < ActiveRecord::Migration[5.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.date :dob
      t.decimal :rating

      t.timestamps
    end
  end
end
