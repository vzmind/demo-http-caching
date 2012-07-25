class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.references :company

      t.timestamps
    end
    add_index :people, :company_id
  end
end
