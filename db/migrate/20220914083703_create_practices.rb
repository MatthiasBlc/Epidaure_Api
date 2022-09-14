class CreatePractices < ActiveRecord::Migration[7.0]
  def change
    create_table :practices do |t|
      t.string :name
      t.string :adresse
      t.string :email

      t.timestamps
    end
  end
end
