class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.text :name
      t.text :address
      t.references :user

      t.timestamps null: false
    end
  end
end
